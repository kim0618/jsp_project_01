package com.care.root.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.care.root.board.dto.BoardDTO;
import com.care.root.member.dto.MemberDTO;

public class BoardDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이브 로드 성공");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe",
                    "jinsung", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDTO> getBoardList(){
		String sql = "select * from board order by time desc";
		ArrayList<BoardDTO> bolist = new ArrayList<BoardDTO>();
		
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setTime(rs.getTimestamp("time"));
				dto.setNum(rs.getInt("num"));
				bolist.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bolist;
	}
	
	public int register(BoardDTO dto) {
		
			String sql = "insert into board(title, content, name, time, num) values(?,?,?,sysdate,num.nextval)";
			int result = 0;
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, dto.getTitle());
				ps.setString(2, dto.getContent());
				ps.setString(3, dto.getName());
				
				
				result = ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
		return result;
	}
	
	public BoardDTO getBoard(int num) {
		
		String sql = "select * from board where num=?";
		BoardDTO dto = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				
			dto = new BoardDTO();
			dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setName(rs.getString("name"));
			dto.setTime(rs.getTimestamp("time"));
			dto.setNum(rs.getInt("num"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public int delete(int num) {
		int result=0;
		String sql = "delete from board where num=?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt(1, num);
				result = ps.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
			}
		return result;
	}
	
	public int modify(BoardDTO dto) {
		int result=0;
		String sql = "update board set title=?, content=? where num=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getTitle());
			ps.setString(2, dto.getContent());
			ps.setInt(3, dto.getNum());
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}

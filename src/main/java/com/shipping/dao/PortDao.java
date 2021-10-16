package com.shipping.dao;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;

import com.shipping.beans.Port;
  
public class PortDao {  
JdbcTemplate template;  
  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
}  
public int save(Port p){
    String sql="insert into port(name) values('"+p.getName()+"')";
    return template.update(sql);  
}  
public int update(Port p){
    String sql="update port set name='"+p.getName()+"' where id="+p.getId()+"";
    return template.update(sql);  
}  
public int delete(int id){  
    String sql="delete from port where id="+id+"";  
    return template.update(sql);  
}  
public Port getEmpById(int id){
    String sql="select * from port where id=?";  
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Port>(Port.class));
}  
public List<Port> getEmployees(){
    return template.query("select * from port",new RowMapper<Port>(){
        public Port mapRow(ResultSet rs, int row) throws SQLException {
            Port e=new Port();
            e.setId(rs.getInt(1));  
            e.setName(rs.getString(2));
            return e;  
        }  
    });  
}  
}  
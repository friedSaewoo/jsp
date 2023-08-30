package com.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConfig {
	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "./com/mybatis/config/config.xml";
			//Resources 클래스를 이용하여 리소스를 읽어들여 Reader객체로 만든다
			Reader reader=Resources.getResourceAsReader(resource);
			
			//세션팩토리 빌더에게 팩토리를 지어달라고 한다 build()
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			System.out.println("MyBatisConfig.java 초기화 문제 발생");
		}
	}
	
	//alt + shift + s + r : 게터 세터 단축키
	//sqlSessionFactory의 접근 제한자가 private이므로 getter를 만든다
	//static 변수이므로 getter에도 static이 붙는 것을 확인할 수 있다.
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}

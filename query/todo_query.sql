CREATE TABLE PKNUSB.TODOS (
	TNO INTEGER NOT NULL,
	TITLE NVARCHAR2(100) NOT NULL,
	DUEDATE DATE NOT NULL,
	WRITER NVARCHAR2(50) NOT NULL,
	ISDONE SMALLINT NULL,
	CONSTRAINT TODOS_PK PRIMARY KEY (TNO)
);
COMMENT ON TABLE PKNUSB.TODOS IS '할일 테이블';
COMMENT ON COLUMN PKNUSB.TODOS.TNO IS 'PK';
COMMENT ON COLUMN PKNUSB.TODOS.TITLE IS '할일 제목';
COMMENT ON COLUMN PKNUSB.TODOS.DUEDATE IS '할일 날짜';
COMMENT ON COLUMN PKNUSB.TODOS.WRITER IS '작성자';
COMMENT ON COLUMN PKNUSB.TODOS.ISDONE IS '완료여부';

CREATE SEQUENCE PKNUSB.SEQ_TODOS INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999 NOCYCLE CACHE 20;


SELECT SEQ_TODOS.CURRVAL FROM DUAL;

INSERT INTO TODOS
(
	 TNO 
    ,TITLE
    ,DUEDATE 
    ,WRITER 
    ,ISDONE 
) 
VALUES 
(
	 SEQ_TODOS.NEXTVAL
 	,'피자먹기'
 	,TO_DATE('2024-06-13 21:00:00', 'YYYY-MM-DD HH24:MI:SS')
 	,'홍길동'
 	,0
);

SELECT TNO
	 , TITLE
 	 , DUEDATE
	 , WRITER
	 , ISDONE
  FROM TODOS

SELECT * FROM TODOS WHERE TNO = 1;

UPDATE TODOS SET
	 TITLE = '피자두조각 먹기'
	,ISDONE = 1
 WHERE TNO = 1;

DELETE FROM TODOS WHERE TNO = 1;

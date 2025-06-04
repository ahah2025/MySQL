-- web				(2025-06-04)
-- ------------------------------------------------------
-- 데이타베이스(스키마) 리스트 보기
show databases;

-- web_db 접속
use web_db;

-- 테이블 리스트 보기
show tables;

-- 작가 테이블 데이타 조회
-- 테스트
select *
from author;

-- 데이타 조회
select  author_id,
		author_name,
        author_desc
from author
;

select	author_id,
		author_name,
        trim(author_desc)
from author
;
-- 데이터 추가
Insert into author 
values(null,'유재석','압구정');

-- 데이터 삭제
delete from author
where author_id = 5
;

-- 데이터 수정
update author
set author_name = '강호동',
	author_name = '강원도'
where author_id = 2
;  

select *
from book;

select *
from book bo, author author
where bo.author_id = author.author_id
;
# shell-script
window, linux batch 파일 등

기초
------------------------------------

    if () else () : 다른 언어와 동일
    echo          : 프린트 같은 역할
    set 변수명=값  : 선언
    
    reg export "%a변수%" "%b변수%" /y 
    : a변수 경로의 레지스트리를 b변수 경로로 export 함
    
    reg delete "a변수" /f 
    : a변수 경로로 존재하는 레지스트리 삭제
    
    reg import "%a변수" 
    : a파일이 레지스트리 확장자인 경우 a파일을 설치함
    
    rem : 뒤에 뭔가를 쓰면 주석
    
    pause 끝을 의미하기도
    
    if not exist "%c변수%" 
    : c변수가 없으면 ( 보통 경로 디렉토리가 없으면)
    
    mkdir "d변수" 
    : d변수 경로로 디렉토리 생성(make directory)


------------------------------------

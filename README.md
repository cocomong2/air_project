 project name : 시계열을 이용하여 미세먼지 예측 프로젝트
 skill : Postgresql, Docker, Fastapi, ETL(airflow), Ubuntu   
 library : Pandas, Requests, sqlalchemy, Matplotlib, Seaborn, StringIO, Scikit-learn, Psycopg2, Numpy, Tensorflow(Keras) or Pytorch 
 model : Cnn/Lstm, Sarimax

 기대효과 : 시계열 데이터 및 미세먼지 전국 데이터를 가져와서 pm 10이상(미세먼지)인 지역을 분석 및 예측을 진행하여 미세먼지 주의를 예방하는 기대효과를 가짐.



* 에어코리아 api 같은 경우에는 시간대별이 있었지만 한 시간대를 가지고 전국 지역을 분석하는 데이터, 기상청 api는 컬럼이 지역별 명이 아닌 TM, 강수량, 풍속, 기온,습도 컬럼만 추출해와 합친다.

* 에어코리아 측정시간은 단일 시간대(스냅샷)데이터라 시계열 분석이 불가능하여 drop하고, 기상청 TM 컬럼을 활용하여 파생변수(시간/요일/월/일)를 생성해 시계열 데이터로 활용한다.

* 기상청 api는  에어코리아와 다르게 지역별 컬럼이 기상청에는 지역별 명이 아닌 숫자형으로 미리 매핑되어있는 상태로 두 데이터셋을 합칠때 시계열 데이터를 쓰기 위해 에어코리아에 있는 시간대별 컬럼을 제거 하고 기상청 TM을 가져와서 데이터를 합친다.


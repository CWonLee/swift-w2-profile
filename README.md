# swift-w2-profile
모바일 2주차 프로필 저장소

### Step1
1/11 19:49
1. 프로젝트 생성
2. Toolbar Controller 추가 및 Initial ViewController로 지정
3. Item1, Item2 생성
4. viewDidLoad() 함수에서 "print(#file, #line, #function, #column)" 출력

<img width="319" alt="screenshot" src="https://user-images.githubusercontent.com/46565404/104172817-32b47d80-5448-11eb-9d41-d7bbc2885ff2.png">

### Step2
1/12 15:33
1. Item1에 Label, ImageView, Button 추가
2. IBOutlet
3. Button의 IBAction으로 클릭을 통해 Label들의 상태 변경 

<img width="424" alt="screenshot1" src="https://user-images.githubusercontent.com/46565404/104278550-2124b180-54ec-11eb-81c9-4b160a1289bb.png">
<img width="424" alt="screenshot2" src="https://user-images.githubusercontent.com/46565404/104278665-4dd8c900-54ec-11eb-90df-06544ba887b6.png">

### Step3
1/12 20:29
1. loginViewController 생성, Edit Button 연결, Login Secen 배경색 수정
2. loginview에 label, button, textfield, imageview 추가
3. prepare함수로 값전달, cancel버튼으로 뒤로가기 구현
4. 화면 관련 콜백 함수들에서 print문 추가

<img width="271" alt="screenshot" src="https://user-images.githubusercontent.com/46565404/104309235-306c2500-5515-11eb-9351-3bd8e4e4baeb.png">

### Step4
1/13 19:46
1. 앨범에서 사진가져와서 imageView에 띄우기
2. edit화면의 프로필 이미지뷰 scale type 변경 및 round 처리
3. edit 화면에서 Done 버튼을 누른 후의 Delegate프로토콜 선언

<img width="266" alt="sc1" src="https://user-images.githubusercontent.com/46565404/104442290-324aec80-55d8-11eb-8c7b-6adcd18b1ef8.png">
<img width="265" alt="sc2" src="https://user-images.githubusercontent.com/46565404/104442344-4393f900-55d8-11eb-8dd7-98e629d7fa3c.png">

### Step5
1/14 15:58
1. profileDelegate 선언 -> weak로 수정
2. 로그인화면 imageView, textField, Button 추가
3. userDB 클래스 구현
4. 로그인 기능 구현
5. 새로운 ViewController 생성 후 MainViewController를 custom class로 지정
6. WK WebView에서 daum페이지 띄우게 구현

<img width="271" alt="sc1" src="https://user-images.githubusercontent.com/46565404/104555607-7fcf6400-5681-11eb-9d2a-e20c5fb94ef7.png">
<img width="268" alt="sc2" src="https://user-images.githubusercontent.com/46565404/104555670-983f7e80-5681-11eb-9e31-3e623bcdedf9.png">

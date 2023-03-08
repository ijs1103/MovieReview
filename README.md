# MovieReview
<img width="1405" alt="image" src="https://user-images.githubusercontent.com/42196410/223767485-22f681c4-4d11-4584-86b9-2fa7c1630581.png">


## 🧩 개요

- 유저가 검색한 영화 api 데이터를 조회 및 즐겨찾기 저장

- SwiftLint 적용 

- MVP 아키텍쳐 

- Presenter에 대한 Unit Test

- BDD 기반의 UI Test

## 🤔 배운 내용

### ✔️ UI Test

  - UIComponent가 의도한대로 출력되고 동작되는지 확인하는 test
  
  - unit test는 하나의 scene을 대상으로 테스트 한다면, ui test는 하나의 앱을 대상으로 테스트 한다
  
  - 시나리오를 기반으로 테스트 케이스를 작성하는데 이를 BDD(Behavior Driven Develop)이라 한다
  
  - BDD는 Given, When, Then의 구조
    
    Given : A의 상태에서, 
    When: B가 실행 될떄, 
    Then: C가 발생해야 한다

### ✔️ NsObject

MVP 아키텍처에서 Presenter class는 NSObject 프로토콜을 conform 한다. 그 이유는, delegate 패턴을 사용하기 위해서이다. 


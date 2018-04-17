//
//  Line1ViewController.swift
//  Project01
//
//  Created by SWUCOMPUTER on 2018. 4. 12..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class Line1ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var playListLabel: UILabel!
    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var printLabel: UILabel!
    @IBOutlet var wayLabel: UILabel!
    @IBOutlet var waySubView: UIView!
    
    
    //검색버튼 : 액션으로 (텍스트필드에 있는 string을 받아 저장하기)
    //스위치 : 가는 방법을 show or hide 
    
    var info: String?
    var storeValue: String? //text field에 입력한 겁색어 저장 변수

    
    // 1 - "청량리역", "종로5가역", "종각역", "시청역", "영등포역"
    // 2 - "합정역(서교동 카페골목)", "잠실나루역", "잠실역", "삼성역", "방배역"
    // 3 - "경복궁역", "안국역", "신사역", "남부터미널역(레트로카페)", "고속터미널역"
    // 4 - "혜화역", "충무로역", "회현역(남대문시장)", "이촌역", "동작역"
    // 5 - "올림픽공원역", "광화문역", "광나루역", "여의나루역", "여의도역"
    // 6 - "한강진역", "이태원역", "월드컵경기장역", "불광역", "연신내역"
    // 7 - "어린이대공원역", "청담역", "뚝섬유원지역", "상도역", "보라매역"
    // 8 - "가락시장역", "모란역", "장지역"
    
    // 9 - "구반포역", "샛강역", "선유도역"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.waySubView.isHidden = true
        
        // Do any additional setup after loading the view.
        if let contentString = info {
            numberLabel.text = contentString
        }
        
        if self.title == "1호선" {
            playListLabel.text = "청량리역 \n종로5가역 \n종각역 \n시청역 \n영등포역"
        }
        else if self.title == "2호선" {
            playListLabel.text = "합정역 \n잠실나루역 \n잠실역 \n삼성역 \n방배역"
        }
        else if self.title == "3호선" {
            playListLabel.text = "경복궁역 \n안국역 \n신사역 \n남부터미널역 \n고속터미널역"
        }
        else if self.title == "4호선" {
            playListLabel.text = "헤화역 \n충무로역 \n회현역 \n이촌역 \n동작역"
        }
        else if self.title == "5호선" {
            playListLabel.text = "올림픽공원역 \n광화문역 \n광나루역 \n여의나루역 \n여의도역"
        }
        else if self.title == "6호선" {
            playListLabel.text = "한강진역 \n이태원역 \n월드컵경기장역 \n불광역"
        }
        else if self.title == "7호선" {
            playListLabel.text = "어린이대공원역 \n청담역 \n뚝섬유원지역 \n상도역 \n보라매역"
        }
        else if self.title == "8호선" {
            playListLabel.text = "가락시장역 \n모란역 \n장지역"
        }
        else {
            playListLabel.text = "구반포역 \n샛강역 \n선유도역"
        }
        
    }

    //playListLabel
    //title이 1호선일 때, 1호선에 해당되는 놀거리 리스트를 label에 출력하기 (한 줄씩)
    
    //inputTextField
    //사용자는 해당 호선의 목록을 보고, text field에 놀거리를 하나 입력한다.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputTextField.resignFirstResponder()
        storeValue = inputTextField.text
        return true
    }
    
    //검색 버튼과 스위치는 모두 storeValue에 저장된 값에 의해 설명이 바뀜
    
    @IBAction func toggleButton(_ sender: UIButton) {
        
        //playListLabel.text = "청량리역 \n종로5가역 \n종각역 \n시청역 \n영등포역"
        if self.title == "1호선" {
            if storeValue == "청량리역" {
                printLabel.text = "홍릉수목원! \n서울 유일의 정통수목원입니다~!"
                wayLabel.text = "역에서 하차 - [간선]201(현대코아) 승차 - 세종대왕기념관 정류장에서 하차 - 2분 걷기 (대중교통 13분)"
            }
            else if storeValue == "종로5가역" {
                printLabel.text = "광장시장! 우리나라최초의 사설 상설시장이자 도심 속 재래시장! \n마약김밥, 빈대떡, 창신육회가 있습니다 ^^"
                wayLabel.text = "8번 출구로 나온 후 - 우리은행 종로4가지점까지 걸어가서 - 왼쪽으로 걷기(도보 6분)"
            }
            else if storeValue == "종각역" {
                printLabel.text = "젊음의 거리! \n거리로 봤을 때 서울의 center에 위치해있습니다~ "
                wayLabel.text = "종각역지하쇼핑센터 10번 출구로 나온 후 - 겐로쿠우동 앞에서 오른쪽으로 (도보 5분)"
            }
            else if storeValue == "시청역" {
                printLabel.text = "덕수궁! \n덕수궁 돌담길도 있습니다 ~!"
                wayLabel.text = "2번 출구로 나온 후 - 걷기 (도보 2분)"
            }
            else if storeValue == "영등포역" {
                printLabel.text = "타임스퀘어! \n대한민국 No.1 복합쇼핑몰 타임스퀘어~! 도시적인 공간과 친근한 자연 공간이 어우러진 라이프스타일 센터"
                wayLabel.text = "3번 출구로 나온 후 - 신세계백화점영등포점까지 걸어가서 - 왼쪽으로 (도보 6분)"
            }
            
        }
            
        //playListLabel.text = "합정역 \n잠실나루역 \n잠실역 \n삼성역 \n방배역"
        else if self.title == "2호선" {
            if storeValue == "합정역" {
                printLabel.text = "서교동 카페골목! \n 이 거리에 특색있는 예쁜 카페들이 많이 있다고 해요~ 가운데 길 하나를 두고 서교동과 합정동으로 동의 경계를 이루고 있다고 합니다."
                wayLabel.text = "5번 출구로 나온 후 – 자전거 가게를 끼고 오른쪽 방향으로 – 서교동 카페거리의 시작 (도보 10분)"
            }
            else if storeValue == "잠실나루역" {
                printLabel.text = "잠실나루! \n잠실나루역에서 한강까지 이어지는 나무산책길"
                wayLabel.text = "3번 출구로 나온 후 – 왼쪽 오른쪽 순서로 걸어서 이동 – 방이삼거리에서 오른쪽 방향으로 – 잠실나루(송파나루 공원입구) 부근 도착 (도보 30분)"
            }
            else if storeValue == "잠실역" {
                printLabel.text = "석촌호수! \n매년 봄 벚꽃 축제가 열립니다~ 여의도 벚꽃축제와 더불어 서울의 대표 벚꽃 축제로 손꼽히는 벚꽃 명소"
                wayLabel.text = "지하도를 이용해서 이동 – 석촌호수까지 약 250m 이동 – 오른쪽 방향으로 이동 – 도착 (도보 13분)"
            }
            else if storeValue == "삼성역" {
                printLabel.text = "코엑스! \n각종 전시회와 축제 및 행사가 열리는 곳이며, 내부 시설로는 코엑스 아쿠아리움, 스타필드 코엑스몰, 그리고 별마당 도서관 등이 있습니다."
                wayLabel.text = "6번 출구로 나온 후 – 약 280m 이동 – 도착 (도보 6분)"
            }
            else if storeValue == "방배역" {
                printLabel.text = "서리풀공원 / 몽마르뜨 공원! \n 산책을 위해 [방배역 - 서리풀공원 – 몽마르뜨공원] 코스로 많이 걷는다고 합니다"
                wayLabel.text = "4번 출구로 나온 후 - ‘뮤랑’ 앞 횡단보도 이용 – 오른쪽 방향으로 이동 – 도착 (도보 5분)"
            }
        }
        
        //playListLabel.text = "경복궁역 \n안국역 \n신사역 \n남부터미널역 \n고속터미널역"
        else if self.title == "3호선" {
            if storeValue == "경복궁역" {
                printLabel.text = "경복궁! \n조선시대의 정궁으로 사적 제117호인 경복궁은 '큰 복을 누리라'는 뜻을 지니고 있으며 서울에서 가볼만한 곳으로 외국인들 뿐만 아니라 우리나라 사람들도 많이 찾는 곳입니다."
                wayLabel.text = "4번 출구로 나온 후 – 광화문까지 1개의 횡단보도 걷기 – 광화문에서 왼쪽 방향으로 – 도착 (도보 10분)"
            }
            else if storeValue == "안국역" {
                printLabel.text = "인사동 쌈지길! \n한국적 분위기가 조성되어 있는 곳"
                wayLabel.text = "6번 출구로 나온 후 - ‘종로경찰서 방범순찰대’까지 24m 이동 후 왼쪽 방향으로 - ‘산곡물’까지 70m 이동 후 오른쪽 방향으로 - ‘보물창고’까지 40m 이동 후 왼쪽 방향으로 – 도착 (도보 6분)"
            }
            else if storeValue == "신사역" {
                printLabel.text = "신사동 가로수길! \n 예술가의 거리라 불리는 신사동 가로수길 주위로는 아기자기한 커피숍과 맛집, 디자이너들의 옷 매장들이 즐비해 있어 이국적인 분위기를 연출한다 합니다 ^^ 가을에는 낙엽지는 거리를 보러 많은 사람들이 찾아온다고 하네요~"
                wayLabel.text = "8번 출구로 나온 후 – 260m 걸어서 ‘잇츠스킨 가로수길점’ 앞에서 왼쪽 방향으로 – 200m 걸어서 가로수길 도착 (도보 8분)"
            }
            else if storeValue == "남부터미널역" {
                printLabel.text = "예술의 전당!\n 예술의전당은 지난 1988년,대한민국 최초의 복합아트센터입니다 ^^ 우수한 공연·전시 콘텐츠를 제공하는 곳입니다"
                wayLabel.text = "5번 출구로 나온 후 – 약 300m 걸어서 ‘뮤직파크’ 앞에서 오른쪽 방향으로 – 460m 걸어서 왼쪽 방향으로 – 횡단보도 이용 – 도착 (도보 13분)"
            }
            else if storeValue == "고속터미널역" {
                printLabel.text = "서래마을! \n브런치로 유명한 곳이기도 하며, 그 중에서도 ‘스토브’와 ‘더페이지’를 추천해드립니다. 가격도 괜찮고 퀄리티도 굿~"
                wayLabel.text = "5번 출구로 나온 후 – 횡단보도까지 약 10m 이동 - COFFEEOLOGY 방면으로 횡단 – 약 500m 걸어서 ‘서래본가’ 앞에서 왼쪽 방향으로 – 260m 걸어서 도착 (도보 20분)"
            }
        }
            
        //playListLabel.text = "헤화역 \n충무로역 \n회현역 \n이촌역 \n동작역"
        else if self.title == "4호선" {
            if storeValue == "혜화역" {
                printLabel.text = "대학로! \n연극의 메카라고 할 수 있죠, 근처에 낙산공원(서울성곽), 창경궁, 그리고 이화벽화마을도 있습니다. 아담하니 낯익은 벽화들을 따라 걸어볼 수 있습니다."
                wayLabel.text = "역에서 하차 후 – 약 150m 걸어서 ‘설빙 서울혜화대학로점’ 앞에서 왼쪽 방향으로 – 도착 (도보 4분)"
            }
            else if storeValue == "충무로역" {
                printLabel.text = "남산타워! \n남산타워는 ‘외국 관광객들이 좋아하는 명소 1위’로 뽑힌 적이 있다고 합니다. 많은 연인들에게 데이트 장소로 많이 알려져 있다고 하는데요, 멋진 야경도 있으니 놀러가서 소중한 추억 남겨보시는 건 어떠세요?"
                wayLabel.text = "2번 출구에서 나온 후 – 대한극장 앞 정류장까지 129m 걷기 – 02(충무로역 2번출구. 대한극장앞) 순환버스 승차 후 – 남산서울타워 정류장에서 하차 – 약 290m 걷기 – 도착 (22분 소요)"
            }
            else if storeValue == "회현역" {
                printLabel.text = "남대문 시장이 있는 곳! \n 남대문시장은 서울뿐만 아니라 한국을 대표하는 중심 시장이라고 합니다~ 서울 시내 중심가에 위치해 있으며, 다양한 먹을거리와 물건들을 판매하고 있습니다."
                wayLabel.text = "5번 출구로 나온 후 – 10m 걷기 – 도착 (1분 소요)"
            }
            else if storeValue == "이촌역" {
                printLabel.text = "국립 중앙 박물관! \n국립중앙 박물관은 한국의 문화유산을 수집,보관 하여 일반인에게 전시하고 유적,유물 등을 조사, 연구하기 위하여 설립된 박물관이라고 합니다 ~ 어린이 박물관도 있으니 아이들과 함께 가도 좋은 곳일 것 같네요"
                wayLabel.text = "2번 출구로 나온 후 – 약 320m 걷기 – 도착 (도보 6분)"
            }
            else if storeValue == "동작역" {
                printLabel.text = "국립 서울 현충원! 매년 수양벚꽃 축제가 열리는 곳입니다~\n현충원은 국가와 민족을 위해 목숨을 바친 영령들이 안장되어 있는 국립묘지인데요 많은 호국 영령의 묘지 뿐만 아니라 여러 조형, 휴게 시설들이 마련되어 있답니다."
                wayLabel.text = "8번 출구로 나온 후 – 국립서울현충원까지 약 50m 걷기 – 도착 (도보 9분)"
            }
        }
        
        //playListLabel.text = "올림픽공원역 \n광화문역 \n광나루역 \n여의나루역 \n여의도역"
        else if self.title == "5호선" {
            if storeValue == "올림픽공원역" {
                printLabel.text = "올림픽공원! \n서울에서 두 번째로 큰 부지를 보유하고 있다고 합니다. 피크닉 가기에도 좋은 곳~"
                wayLabel.text = "3번 출구로 나온 후 – 약 90m 걸어서 올림픽공원(동문)에서 오른쪽 방향으로 – 약 10m 이동 – 도착 (도보 3분)"
            }
            else if storeValue == "광화문역" {
                printLabel.text = "교보문고! \n광화문역의 교보문고는 서점 중에서 가장 큰 곳이라고 해요~"
                wayLabel.text = "3번 출구로 나온 후 – 약 40m 걸어서 교보생명빌딩 앞에서 오른쪽 방향으로 – 약 100m 걸어서 교보생명빌딩 앞에서 또 오른쪽 방향으로 – 약 70m 걷기 – 도착 (도보 4분)"
            }
            else if storeValue == "광나루역" {
                printLabel.text = "광나루 한강 자전거 공원! \n광나루 한강 자전거 도로가 있으며, 총 길이 7.9km로 구성된 자전거 도로는 광나루 한강공원에서 가장 인기있는 장소 중 하나이다.무료 자전거 교육 프로그램도 운영한다고 하니, 연인 또는 가족과 함께 배우며 나들이 가는 것도 좋겠네요 ^^"
                wayLabel.text = "천호역으로 이동 후 하차하여 3번 출구로 나온 후 – 천호역 현대백화점 정류장까지 약 1분 걷기 – 3318(천호역현대백화점) 승차 후 – 천호동공원 정류장에서 하차 후 걷기 – 도착 (대중교통 30분)"
            }
            else if storeValue == "여의나루역" {
                printLabel.text = "여의나루 한강공원! \n여의나루역 2번이나 3번 출구로 걸어나가면 여의나루역 – 윤중로 – 국회의사당까지 쭉 벚꽃길이 있어서 산책하기 좋다고 합니다 ^^"
                wayLabel.text = "3번 출구로 나온 후 – 약 160m 이동 – 도착 (도보 3분)"
            }
            else if storeValue == "여의도역" {
                printLabel.text = "여의도 공원! \n매년, 벚꽃 축제의 메카인 이 곳은, 축제 기간에 차량이 모두 통제된다고 합니다. 27년간 검은 아스팔트로 뒤덮여 있던 여의도 광장이 숲과 잔디, 물이 어우러진 도심공원으로 새롭게 태어난 곳이라고 합니다."
                wayLabel.text = "3번 출구로 나온 후 – 한화손해보험빌딩 앞 횡단보도까지 1개의 횡단보도를 지나 – 약 250m 걸어서 2개의 횡단보도 이용 – 약 50m 걷기 – 도착 (도보 7분)"
            }
        }
        
        //playListLabel.text = "한강진역 \n이태원역 \n월드컵경기장역 \n불광역 \n연신내역"
        else if self.title == "6호선" {
            if storeValue == "한강진역" {
                printLabel.text = "한강진 꼼지 가로수길!\n제 2의 가로수길이라 불리는 ‘꼼지길’입니다. 한강진역에서 제일기획 건물 삼거리까지를 말한다고 합니다. "
                wayLabel.text = "한강진역에서 걸어나온 후 – 제일기획 건물 삼거리까지"
            }
            else if storeValue == "이태원역" {
                printLabel.text = "이태원 세계 음식 거리! \n프랑스, 스페인, 브라질, 태국, 중국, 이탈리아, 독일 등 여러 나라의 음식을 레스토랑으로 개량해 비교적 높은 가격에 판매하고 있다 케밥도 유명하다고 하네요~"
                wayLabel.text = "2번 출구로 나온 후 – 40m 걸어서 라보라운지 앞에서 오른쪽 방향으로 – 도착 (도보 2분)"
            }
            else if storeValue == "월드컵경기장역" {
                printLabel.text = "하늘공원! \n서울에서 3번째로 가장 큰 부지를 보유하고 있다고 합니다."
                wayLabel.text = "2번 또는 3번 출구로 나온 후 – 서울월드컵경기장 앞 횡단보도까지 약 300m 걸어서 – 도착 (도보 13분)"
            }
            else if storeValue == "불광역" {
                printLabel.text = "불광천! \n서울의 대표 나들이 장소 불광천은 사시사철 구민들 및 다양한 지역 사람들에게 사랑받는 산책로이며, 벚꽃축제도 열린다고 합니다."
                wayLabel.text = "역에서 나온 후 – 양광교회 정류장까지 약 5분 걷기 – 7022(양광교회) 버스 승차 후 – 응암역신사오거리 정류장에서 하차 – 불광천까지 약 7분 걷기 – 도착 (대중교통 23분)"
            }
            
        }
        
        //playListLabel.text = "어린이대공원역 \n청담역 \n뚝섬유원지역 \n상도역 \n보라매역"
        else if self.title == "7호선" {
            if storeValue == "어린이대공원역" {
                printLabel.text = "어린이대공원! \n어린이만 가는 곳이 아닙니다~ 동물원, 식물원 등 테마별로 놀거리가 잘 갖춰져 있어서 피크닉 장소로 제격!"
                wayLabel.text = "1번 출구로 나온 후 – 약 50m 걸어서 오른쪽 방향으로 – 도착 (도보 4분)"
            }
            else if storeValue == "청담역" {
                printLabel.text = "청담동 명품거리! \n갖가지 명품들이 모여있어서 구경하는 새로운 재미가 있는 곳"
                wayLabel.text = "10번 출구로 나온 후 – MN휘트니스청담2호점까지 약 100m 이동 후 오른쪽 방향으로 – 2개의 횡단보도 지나 약 850m 걷기 – 도착 (도보 16분)"
            }
            else if storeValue == "뚝섬유원지역" {
                printLabel.text = "뚝섬유원지! \n피크닉 장소로 좋다^^ 이 곳 주변은, 자벌레 모양의 건물과 오리배로 유명하다. 야경으로 유명하기도 하다."
                wayLabel.text = "역에서 나온 후 – 약 90m 이동하여 왼쪽 방향으로 – 횡단보도 이용하여 뚝섬유원지 방면으로 횡단 – 도착 (도보 2분)"
            }
            else if storeValue == "상도역" {
                printLabel.text = "상도 소곱창으로 유명한 곳! \n곱창 매니아라면 한번쯤 가볼만한 곳인 것 같습니다~"
                wayLabel.text = "5번 출구로 나온 후 – 1개의 횡단보도를 지나 약 800m 이동 – 도착 (도보 13분)"
            }
            else if storeValue == "보라매역" {
                printLabel.text = "보라매 공원! \n한 바퀴 쭉 돌면서 산책하기에 제격인 곳이랍니다."
                wayLabel.text = "3번 출구로 나온 후 – 계경순대국보라매역점 앞 횡단보도까지 약 100m 걷기 – 은석장로교회까지 약 150m 걷기 – 기상청입구까지 약 100m 걷기 – 왼쪽 방향으로 이동 – 도착 (도보 12분)"
            }
        }
        
        //playListLabel.text = "가락시장역 \n모란역 \n장지역"
        else if self.title == "8호선" {
            if storeValue == "가락시장역" {
                printLabel.text = "가락시장! \n5일장으로 유명한 곳이라고 하니, 눈요기로 한번쯤 가보는 것도 좋을 듯 하네요~"
                wayLabel.text = "1번 출구로 나온 후 – 약 600m 걸어서 오른쪽 방향으로 – 약 300m 걷기 – 도착 (도보 15분)"
            }
            else if storeValue == "모란역" {
                printLabel.text = "모란시장! \n 5일장으로 열리는 유명한 모란장날이 있습니다~"
                wayLabel.text = "7번 출구로 나온 후 – 약 250m 걸어서 횡단보도 3개 이용 – 왼쪽 방향으로 이동 후 30m 걷기 – 도착 (도보 10분)"
            }
            else if storeValue == "장지역" {
                printLabel.text = "가든파이브! \n한국 물류의 허브가 될 garden5는 고객의 오감을 만족시키는 복합생활공간 이라는 뜻으로, 가든파이브 라이프, 가든파이브 웍스 등의 다섯가지로 이루어져 있어 garden5라 부른다 합니다."
                wayLabel.text = "3번 출구로 나온 후 – 약 80m 이동 – 도착 (도보 2분)"
            }
            
        }
        
        //playListLabel.text = "구반포역 \n샛강역 \n선유도공원"
        else if self.title == "9호선" {
            if storeValue == "구반포역" {
                printLabel.text = "애플하우스! \n음식점 이름. 동네 상가의 떡볶이 집인데 길게 줄서서 먹는다고 한다."
                wayLabel.text = "3번 출구로 이동 후 – 세븐일레븐 반포2호점 앞 횡단보도까지 약 200m 이동 – 2개의 횡단보도 이용 – 동아상회 방면으로 걸은 후 – 애플하우스까지 약 50m 이동 – 도착 (도보 6분)"
            }
            else if storeValue == "샛강역" {
                printLabel.text = "샛강 생태 공원! \n식물들 사이사이로 산책하기 딱 좋다"
                wayLabel.text = "CU016샛강역점 앞 서거리에서 – 오른쪽 방향으로 이동 – 왼쪽으로 이동 후 약 500m 이동 – 도착 (도보 10분)"
            }
            else if storeValue == "선유도역" {
                printLabel.text = "선유도 공원! \n조명공사로 더 이뻐졌다고 하네요 한번 가보실래요?"
                wayLabel.text = "4번 출구로 나온 후 – KB국민은행 양평동지점 앞에서 왼쪽 방향으로 – 약 70m 이동 후 코코모터스 앞 횡단보도 – 약 250m 걸어서 이동 – 도착 (도보 18분)"
            }
            
        }
        
    }
    
    
    //printLabel
    //입력된 text를 저장하여, if 어떤 장소이면, 해당 장소에 대한 설명을
    //하단의 label에 출력시킨다.
   
    //스위치를 on하면, 인식된 놀거리 string에 대한 설명을 label에서 보여주고,
    //off하면 보여주지 않는다.
    
    
    @IBAction func showWaySwitch(_ sender: UISwitch) {
        self.waySubView.isHidden = !sender.isOn
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

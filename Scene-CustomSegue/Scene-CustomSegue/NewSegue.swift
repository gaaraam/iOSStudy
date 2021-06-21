//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by 이가람 on 2021/06/16.
//

import UIKit
class NewSegue: UIStoryboardSegue{
    
    override func perform() {
        
        // 세그웨이의 출발지 뷰 컨트롤러
        let srcUVC = self.source
        
        // 세그웨이의 목적지 뷰 컨트롤러
        let destUVC = self.destination
        
        // fromView에서 toView로 뷰를 전환한다.
        // duration은 화면 전환에 소요되는 시간(단위: 초)
        // option은 애니매이션 전환 옵션
        // transition은 타입메소드이기 때문에 UIView클래스의 인스턴스를 생성하지 않고도 호출할 수 있다.
        UIView.transition(from: srcUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
    }
}

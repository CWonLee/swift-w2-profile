//
//  UserInfo.swift
//  KakaoProfile
//
//  Created by 이청원 on 2021/01/14.
//

import Foundation

class UserInfo {
    
    enum UserVerificationState: Int, CustomStringConvertible {
        case success = 0, emptyId, emptyPassword, noExistId, wrongPassword
        
        var description: String {
            switch self {
            case .success:
                return "로그인에 성공하였습니다"
            case .emptyId:
                return "아이디를 입력해주세요"
            case .emptyPassword:
                return "비밀번호를 입력해주세요"
            case .noExistId:
                return "아이디가 존재하지 않습니다"
            case .wrongPassword:
                return "비밀번호가 일치하지 않습니다"
            }
        }
    }
    
    struct User {
        var id: String
        var password: String
    }
    
    var model: [User] = [
        User(id: "blue", password: "kakao"),
        User(id: "JK", password: "godrm"),
        User(id: "lcw", password: "1234")
    ]
    
    func checkUser(id:String, pw:String) -> UserVerificationState {
        if id == "" {
            return .emptyId
        } else if pw == "" {
            return .emptyPassword
        }
        for user in model {
            if user.id == id {
                if user.password == pw {
                    return .success
                } else {
                    return .wrongPassword
                }
            }
        }
        return .noExistId
    }
}

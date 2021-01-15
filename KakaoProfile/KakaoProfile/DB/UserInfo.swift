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
        var userId: String
        var userPassword: String
    }
    
    var model: [User] = [
        User(userId: "blue", userPassword: "kakao"),
        User(userId: "JK", userPassword: "godrm"),
        User(userId: "lcw", userPassword: "1234")
    ]
    
    func checkUser(id:String, pw:String) -> UserVerificationState {
        if id == "" {
            return .emptyId
        } else if pw == "" {
            return .emptyPassword
        }
        for user in model {
            if user.userId == id {
                if user.userPassword == pw {
                    return .success
                } else {
                    return .wrongPassword
                }
            }
        }
        return .noExistId
    }
}

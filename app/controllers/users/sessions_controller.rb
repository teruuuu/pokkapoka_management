module Users
  class SessionsController < Devise::SesseionsController
    def guest_sign_in
      sign_in User.guest
      redirest_to root_path, notice: "ゲストユーザーとしてログインしました。"
    end
  end
end

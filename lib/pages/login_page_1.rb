class LoginPage
	
	include PageObject

	#direct_url Base_Url
	#@browser.goto "http://qa-cent6-64-2"

	text_field :user, :name=> 'josso_username'
	text_field :password, :name=> 'josso_password'
	button :login, :value=> 'Login'

	link :knowledge_base, :text => /Knowledge Base/
	link :case_manager, :text => /Case Manager/
	link :forums , :text => /Forums/
	link :gwos , :text => /www.gwos.com/

	def Login_User(user,password)
		self.user=user
		self.password=password
		self.login
	end
end	
	


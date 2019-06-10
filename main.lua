
display.setDefault( "background", 255/255, 200/255, 0/255 )

local HowTextField = display.newText( "TYPE A NUMBER IN THE BOX", display.contentCenterX + 1 , display.contentCenterY - 200, "Impact", 20 )
HowTextField.id = "HowTextField"
HowTextField:setFillColor( 0, 0, 255/255 ) 

local TypeValueTextField = native.newTextField( display.contentCenterX + 1, display.contentCenterY - 150, 300, 75 )
TypeValueTextField.id = "TypeValueTextField"

local calculateButton = display.newImageRect( "submit.png", 200, 125 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY -50
calculateButton.id = "calculateButton"

local AnswerTextField = display.newText( "TYPE A NUMBER IN THE BOX", display.contentCenterX + 1 , display.contentCenterY +200, "Impact", 20 )
AnswerTextField.id = "AnswerTextField"
AnswerTextField:setFillColor( 0, 0, 255 )

 local function calculateButtonTouch( event )

	local Value = tonumber(TypeValueTextField.text)

	Value = Value -1

	local MyPi = 0

	local n = 0

	while n <= Value do

		MyPi = MyPi + ((-1) ^ n)/ (2 * n + 1)

		n = n + 1

		

	end

	MyPi = MyPi * 4

	AnswerTextField.text = ("The answer is ".. MyPi) 
		--print(MyPi*4)

end

calculateButton:addEventListener( "touch", calculateButtonTouch )

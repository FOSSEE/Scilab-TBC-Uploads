clc,clear
//Example 1.24
//To determine reference angle and angle ( 0 to 360 )with same terminal side as given angle

theta = 928 ;//given angle in degrees

//The while loop works for ALL VALUES OF theta
//It keeps subtracting 360 till a value in (0 to 360) is obtained
 result = theta ; 
while 1==1,
    if result<360 then
        printf('(a)Required angel between 0 and 360 is %.0f degree',result);
        break 
    end
    result = result - 360 ;
end

//928 and 208 has same terminal side in 3rd quadrant
//so their reference angle is same
ref_angle_928 = result - 180 ; //required reference angle
printf('\n(b)Reference angel for %.0f is %.0f degree',theta,ref_angle_928)

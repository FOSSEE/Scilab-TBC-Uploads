//clc()
m = 100;//kg ( basis - sucrose solution as fresh feed )
//R - recycle reactor exit, let x be the weight fraction of sucrose and y be the weight fracton of inversion sugar in the recycle stream, for combined stream  fraction of Glucose + fructose = 0.04
//z be the weight fraction of sucrose in the combined stream entering the reactor
Psfeed = 25;//% percent sucrose in fresh feed
//sucrose balance gives, 25 + R*x = (100+R)* z                        (A)
//Glucose + fructose balance, R * y = (100 + R )*0.04                 (B)
Sucrosecon = 71.7;//% sucrose consumed
//sucrose balance around the reactor,(100+R)z=0.717*(100+R)z+(100+R)x (C)
//From (C) , x = 0.283*z                                              (D)
//Amount converted to Glucose + fructose = 0.717 ( 100 + R )* z 
// = 0.717 ( 100 + R )* z * 360.192 / 342.176 kg
//Glucose and fructose balance around the reactor,
//(100+R)*0.04 + 0.717(100+R)*z*360.192/342.176 = (100+R)*y           (E)
//Solving (E), y = 0.04 + 0.7548*z                                    (F)
//Solving, (A), (B), (C) and (F)
x = 0.06;
y = 0.2;
z = 0.212;
R = 25;
disp("kg",R,"(a)Recycle flow = ")
disp("%",y*100,"(b)Combined concentration of Glucose and Fructose in the recycle stream = ")
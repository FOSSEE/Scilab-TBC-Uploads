//clear//
clc
clear
exec("5.2data.sci");
 for i =1:length(t)
g(i) =log(2*P0/(3*P0-P(i)));
end
plot2d(t,g); 

xtitle( 'Figure E4-11.2 Plot of processed data', 't (min)', '2PTo/3PTo-PT' ) ;

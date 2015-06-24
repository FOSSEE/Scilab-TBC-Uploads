//EXAMPLE 7.2
//|H(e^(jw))|^2 = 4*((1.09 + 0.6*cosw)*(1.16-0.8*cosw))/((1.04-0.2*cosw)*(1.25+cosw))
//REPLACING cosw = (z + z(^-1))/2
clc;
clear;
z=%z;
H1=4*((1.09 + (0.3)*(z+1/z))*(1.16 - (0.4)*(z+1/z)));
H2=((1.04 - (0.2)*(z+1/z))*(1.25 + (0.5)*(z+1/z)));
H=H1/H2;
disp(H,'The transfer function is, H = ')
elts1=factors(numer(H));
disp(elts1,'The factors of numerator are :');
elts2=factors(denom(H));
disp(elts2,'The factors of denominator are :');
disp('The Four posible stable transfer function with same square magnitude function are :');
h1=2*((1+(0.3)/z)*(1- (0.4)/z))/((1-(0.2)/z)*(1+(0.5)/z));
disp(h1,'stable transfer function,h1 = ');
h2=2*((1+(0.3)/z)*((0.4)- (1)/z))/((1-(0.2)/z)*(1+(0.5)/z));
disp(h2,'stable transfer function,h2s = ');
h3=2*(((0.3)+1/z)*((1)- (0.4)/z))/((1-(0.2)/z)*(1+(0.5)/z));
disp(h3,'stable transfer function,h3 = ');
h4=2*(((0.3)+1/z)*((0.4)- (1)/z))/((1-(0.2)/z)*(1+(0.5)/z));
disp(h4,'stable transfer function,h4 = ');
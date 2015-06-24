//example 3.5
clc;
clear;
disp('The boolean equation is :');
disp('Y = A''B''C'' + A''BC'' + AB''C'' + ABC''');
disp('Since C'' is common to each term, factor as follows :');
disp('Y = (A''B + A''B + AB'' AB)C''');
disp('Again, factor to get :');
disp('Y = [A''(B'' + B) + A(B'' + B)]C''');
disp('Now, simplify the foregoing as follows :');
disp('Y=[A''(1) + A(1)]C'' = (A'' + A)C''');
disp(' or   Y= C''');
disp('This final equation means that you don''t even need a logic circuit. All you need is a wire connecting input C'' to output Y.');  
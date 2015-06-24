//page 25
//Example 1.15
clear;
close;
clc;
a = [2 -1;1 3];
disp(a,'a = ');
b = a;              //Temporary variable to store a
disp('Applying row tranformations');
disp('Interchange R1 and R2');
x = a(1,:);
a(1,:) = a(2,:);
a(2,:) = x;
disp(a,'a = ');
disp('R2 = R2 - 2 * R1');
a(2,:) = a(2,:) - 2 * a(1,:);
disp(a,'a = ');
disp('R2 = R2 *1/(-7)');
a(2,:) = (-1/7) * a(2,:);
disp(a,'a = ');
disp('R1 = R1 - 3 * R2');
a(1,:) = a(1,:) - 3 * a(2,:);
disp(a,'a = ');
disp('Since a  has become an identity matrix. So, a is invertible');
disp('inverse of a = ');
disp(inv(b)); //a was stored in b
//end

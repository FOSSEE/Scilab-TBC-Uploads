disp('To verify if u v and w are orthogonal')
u=[-1;4;-3]
v=[5;2;1]
w=[3;-4;-7]
disp(w,v,u)
disp('u.v=')
disp(v'*u)
disp('u.w=')
disp(u'*w)
disp('Since u.w is not equal to zero, the set {u v w} is not orthogonal.')
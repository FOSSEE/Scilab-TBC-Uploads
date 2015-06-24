// example 6.32
// caption: solving the IVP by numerov method
// u''=(1+t^2)*u
// u(0)=1, u'(0)=0 ,[0,1]
// h=0.2,

// expression for numerov method is 
//u(j+1)-2*u(j)+u(j-1)=(h^2/12)*(u''(j+1)+10*u''(j)+u''(j-1));

// observing the IVP we can reduce the  numerov method to 
//u(2)=2*u(1)-u(0)+(.2^2/12)*(1.16*u(2)+10.4*u(1)+1);     for j=1
// u(3)=2*u(2)-u(1)+(.2^2/12)*(1.36*u(3)+11.6*u(2)+1.04*u(1));     for j=2
// u(4)=2*u(3)-u(2)+(.2^2/12)*(1.64*u(4)+13.6*u(3)+1.16*u(2));     for j=3
// u(5)=2*u(4)-u(3)+(.2^2/12)*(2*u(5)+16.4*u(4)+1.36*u(3));     for j=4

// from taylor series expansion we observe that 
u1=1.0202;u0=1;
//u2-(.2^2/12)*(1.16*u2)=2*u1-u0+(.2^2/12)*(10.4*u1+1);
u2=(1/.9961333)*2*u1-u0+(.2^2/12)*(10.4*u1+1)

u3=(1/.995467)*(2.038667*u2-.996533*u1)

u4=(1/.994533)*(2.045333*u3-.996133*u2)

u5=(1/.993333)*(2.054667*u4-.995467*u3)
function [] = circle(centre,radius,NOP)
    
    THETA=linspace(0,2*%pi,NOP);
    RHO=ones(1,NOP)*radius;
    z=tan(THETA);
    x=sqrt(((RHO).^2)./(1+(z.^2)));
    y=x.*z;
    x=x+centre(1);
    y=y+centre(2);
    plot2d(x,y,style=-2);
    set(gca(),"auto_clear","off")        //hold on
    plot2d(-(x)+2*(centre(1)),y,style=-2);
    
    
/////////////// End of Function circle
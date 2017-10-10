//chapter23
//example23.2
//page510

t=12d-3 // sec
I=50 // A
fuse_rating=I^2*t

if fuse_rating < 90 
     printf("rating = %.3f ampere square second which is less than maximum \nrating so device will not be destroyed \n",fuse_rating)
else printf("rating = %.3f ampere square second which is more than maximum \nrating so device may get damaged \n",fuse_rating)
    
end

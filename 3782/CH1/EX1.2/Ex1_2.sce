
l1=20                  //chain 1 length
e=0.05                 //error
l11=l1+e               
ml1=1200               //measured lenght
tl=(l11/l1)*ml1        //true lenght of line

l2=30                  //chain 2 length
ml2=1195               //measured length

l21=(tl/ml2)*l2        
ae=l21-l2              //amount of error
printf("\n amount of error= %0.3f ",ae)

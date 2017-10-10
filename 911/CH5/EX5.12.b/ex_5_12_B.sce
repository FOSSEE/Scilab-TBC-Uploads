//3 vARIABLE KMAP//
 clc
 clear
 function bi = kmap3abx (k)
 n =4;
 m=2

 // k=[0 0 0 1 ; 0 1 1 1 ] ;
 k(: ,: ,2)= zeros (m,n);
 var =['x' 'A' 'B ' ];
 // var =[ 'w' ' x ' ' y ' ' z ' ] ;
 p1 =[ ' x ' ' ' ' x ' ];
 p2 =[ 'A''B ''' ; 'A''B' ; 'AB' ; 'AB''' ];
 cmn4 =4;
 cmn2 =2;
 temp =1;
 // p r i n t f ( ' The minimal eXpression of the given Kmap ' ) ;
 disp (k(: ,: ,1));
 // disp (" i s : " ) ;
 //printf( ' f ' ) ;
 //printf("=") ;
 bi = ' ' ;
 // 8 c e l l s
 for i =1: m
 for j=1: n
 if(k(i,j) ~=1 & k(i,j) ~=2)
 temp =0;
 break ;
 end
 end
 end
 if( temp ==1)
 bi = strcat ([ bi " 1 " ]);
 return ;
 end
 // 4 c e l l s
 z1= ones (1 ,4);
 z2= ones (4 ,1);
 z3= ones (2 ,2);
 temp1 =[ ' 0 ' ' 1 ' ];
 temp2 =[ ' 00 ' ; ' 01 ' ; ' 11 ' ; ' 10 ' ];
 for t =1: m
 z=k(t ,: ,1);
 no= noof (k(t ,: ,2));
 if( noof0 (z) ==0 & no < cmn4 & noof (z) >0)
 k(t ,: ,2)=z1;
 a= strsplit ( temp1 (1,t));
 for in =1: max ( size (a))
 if(a(in)== ' 0 ' )
 bi = strcat ([ bi var (in) ' ' ' ']);
 end
 if(a(in)== ' 1 ' )
 bi = strcat ([ bi var (in)]);
 end
 end
 bi = strcat ([ bi " + " ]);
 end
 end
 for i =1:m -1
 for j=1: n
 t1=i+1;
 if(j==n)
 t2 =1;
 else
 t2=j+1;
 end
 z4 =[k(i,j ,1) k(i,t2 ,1);k(t1 ,j ,1) k(t1 ,t2,1) ];
 z5 =[k(i,j ,2) k(i,t2 ,2);k(t1 ,j ,2) k(t1 ,t2,2) ];
 no= noof (z5);
 if( noof0 (z4)==0 & no < cmn4 & noof (z4) >0)
 k(i,j ,2) =1;
 k(i,t2 ,2) =1;
 k(t1 ,j ,2) =1;
 k(t1 ,t2 ,2) =1;
 a= strsplit ( temp2 (j ,1) );
 b= strsplit ( temp2 (t2 ,1) );
 c= strcmp (a,b);
 for in =1: max ( size (c))
 if(c(in) ==0 & a(in)== ' 0 ' )
 bi = strcat ([ bi var (1+ in) ' '' ' ]);
 end
 if(c(in) ==0 & a(in)== ' 1 ' )
 bi = strcat ([ bi var (1+ in)]);
 end
 end
 bi = strcat ([ bi " + " ]);
 end
 end
 end
// 2 c e l l s
z6 =[1 1];
 z7=z6';
 for i =1: m
 for j=1: n
 t1=i+1;
 if(j==n)
 t2 =1;
 else
 t2=j+1;
 end
 z8 =[k(i,j ,1) k(i,t2 ,1) ];
 z9 =[k(i,j ,2) k(i,t2 ,2) ];
 no1 = noof (z9);
 if( noof0 (z8)==0 & no1 < cmn2 & noof (z8) >0)
 k(i,j ,2) =1;
 k(i,t2 ,2) =1;
 bi = strcat ([ bi p1(1,i)]);
 a= strsplit ( temp2 (j ,1) );
 b= strsplit ( temp2 (t2 ,1) );
 c= strcmp (a,b);
 for in =1: max ( size (c))
 if(c(in) ==0 & a(in)== ' 0 ' )
 bi = strcat ([ bi var (1+ in) ' '' ' ]);
 bi = strcat ([ bi " + " ]);
 end
 if(c(in) ==0 & a(in)== ' 1 ' )
 bi = strcat ([ bi var (1+ in)]);
 bi = strcat ([ bi " + " ]);
 end
 end
 end
 end
 end
 for i =1:m -1
 for j=1: n
 t1=i+1;
 if(j==n)
t2 =1;
 else
 t2=j+1;
 end
z10 =[k(i,j ,1) ;k(t1 ,j ,1) ];
 z11 =[k(i,j ,2) ;k(t1 ,j ,2) ];
 no2 = noof ( z11 );
if( noof0 ( z10 )==0 & no2 < cmn2 & noof ( z10 )>0) k(i,j ,2) =1;
 k(t1 ,j ,2) =1;
 bi = strcat ([ bi p2(j ,1) ]);
 bi = strcat ([ bi " + " ]);
 end
 end
 end
 //single cell//
 for i =1: m
 for j=1: n
 if(k(i,j ,2) ==0 & k(i,j ,1) ==1)
 bi = strcat ([ bi p1(1,i)]);
 bi = strcat ([ bi p2(j ,1) ]);
 bi = strcat ([ bi " + " ]);
 end
 end
 end
 bi = strcat ([ bi " 0 " ]);
 //disp(" ")
endfunction
disp('Y1=AB+A''B''C''+B''C')
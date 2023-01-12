%%%%%%%%%%%%%%%%%%%%%%%%%%%%pentanol
start_1_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2  
];

%FUNDAMENTAL MODE imaginary part
start_1_img=[
    1.7829709491667853
    1.8416079721884748       
    1.8926270162007386       
    1.9375127577044648       
    1.977375814391533        
    2.0130903796949164       
    2.0453323586025327       
    2.07463641510593         
    2.1014663029881846       
    2.1261552685223406       
    2.149011132143834        
    2.170288251401624        
    ];

  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_img,x,'spline');
plot(start_1_lam1,start_1_img,'.w',x,y,'cyan','LineWidth',2.2);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%propanol
start_5_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_5_img=[
    1.7637184810209143
    1.8238887802213752       
    1.8764723750517383       
    1.9230529083194          
    1.9648284441972288       
    2.0027523557234366       
    2.0375725657289476       
    2.0698909170358744       
    2.1002402557312645       
    2.1290166441276552       
    2.1565959492502036       
    2.1833023908128357       
];

  x=1.1:0.0005:2.2;
  y=interp1(start_5_lam1,start_5_img,x,'spline');
plot(start_5_lam1,start_5_img,'.w',x,y,'red','LineWidth',2.2);
hold on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%ethanol
start_6_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2  
];

%FUNDAMENTAL MODE imaginary part
start_6_img=[
   1.7544135454991157
   1.815611508244452        
   1.8692792475995363       
   1.9170589056787866       
   1.960203250695345        
   1.9997180731832882       
   2.0364013626654636       
   2.0709035237775852       
   2.1038280171190142       
   2.1355599369789195       
   2.16658432548202         
   2.197257542289035        
];

  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_img,x,'spline');
plot(start_6_lam1,start_6_img,'.w',x,y,'green','LineWidth',2.2);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%HCN
start_7_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_7_img=[
   1.709994041356141
   1.7782410006182356       
   1.8394762048080313       
   1.895658690463012        
   1.94834412052018         
   1.998828522815728        
   2.048175564752772        
   2.097269826908839        
   2.1469412710211873       
   2.19768025658925         
   2.250096338334071        
   2.3045414793139956       
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_img,x,'spline');
plot(start_7_lam1,start_7_img,'.w',x,y,'black','LineWidth',2.2);
hold on

start_7_lam1=[
    1.1
    1.2
    1.3
    1.4
    1.5
    1.6
    1.7
    1.8
    1.9
    2.0
    2.1
    2.2 
];

%FUNDAMENTAL MODE imaginary part
start_7_img=[
  2.405
  2.405
  2.405
  2.405
  2.405
  2.405
  2.405
  2.405
  2.405
  2.405
  2.405
  2.405
];
 
  x=1.1:0.0005:2.2;
  y=interp1(start_7_lam1,start_7_img,x,'spline');
plot(start_7_lam1,start_7_img,'.w',x,y,'LineWidth',2.6);


set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[1.6:0.2:2.6])
xlabel('Frequency(THz)','FontSize',18);
ylabel('V parameter','FontSize',18);
ylim([1.7 2.6]);
xlim([1.1 2.2]);
set(gca,'FontSize',19); % size of tick marks on both axes
lgnd=legend(' ','Pentanol',' ','Propanol',' ','Ethanol',' ','Methanol');
set(lgnd,'color','none');
grid on
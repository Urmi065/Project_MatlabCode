%%%%%%%%%%%%%%%%%%%%%%%%%%%%NA_methanol
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
    0.4123541396750187
    0.39307756285704215      
    0.37533680329173524      
    0.35916957776681846      
    0.3445428862497979       
    0.3313785831241609       
    0.3195863000628014       
    0.3090717923770597       
    0.2997246183522317       
    0.2914763968097034       
    0.2842171401308623       
    0.2778617093613742       
    ];

  x=1.1:0.0005:2.2;
  y=interp1(start_1_lam1,start_1_img,x,'spline');
plot(start_1_lam1,start_1_img,'.w',x,y,'cyan','LineWidth',2.3);
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NA_ethanol
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
    0.42306561934844555
    0.4013382587106056       
    0.3814179794333411       
    0.36322426667354957      
    0.3466400409032954       
    0.3315260584763759       
    0.3177491168906016       
    0.3051862262650709       
    0.2937057748253171       
    0.2832374335326763       
    0.27366846047879234      
    0.26492633874802024      
];

  x=1.1:0.0005:2.2;
  y=interp1(start_5_lam1,start_5_img,x,'spline');
plot(start_5_lam1,start_5_img,'.w',x,y,'LineWidth',2.3);
hold on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NA_propanol
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
   0.4253094451098382
   0.4031679375306658       
   0.3828857045697265       
   0.3643599475893142       
   0.347457954690608        
   0.33202910125241974      
   0.31793186511791294      
   0.30503699979138676      
   0.2932141890230243       
   0.28236960236486247      
   0.2724067955097005       
   0.2632437471008836       
];

  x=1.1:0.0005:2.2;
  y=interp1(start_6_lam1,start_6_img,x,'spline');
plot(start_6_lam1,start_6_img,'.w',x,y,'LineWidth',2.3);
  hold on
  
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%NA_pentanol
start_2_lam1=[
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
start_2_img=[
   0.42995205481894294
   0.40708473890449653      
   0.3861819860608065       
   0.3670996485831345       
   0.34967681690086067      
   0.3337430050199859       
   0.3191426614658433       
   0.305736337366083        
   0.29338535727444737      
   0.2819901006385055       
   0.2714487320749659       
   0.26167461456188373      
];

  x=1.1:0.0005:2.2;
  y=interp1(start_2_lam1,start_2_img,x,'spline');
plot(start_2_lam1,start_2_img,'.w',x,y,'LineWidth',2.3); 
  
set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[1.1:0.2:2.2])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[1.54:0.07:1.92])
xlabel('Frequency(THz)','FontSize',18);
ylabel('Numerical Aperture','FontSize',18);
%ylim([1.54 1.92]);
xlim([1.1 2.2]);
set(gca,'FontSize',19); % size of tick marks on both axes
lgnd=legend(' ','Methanol',' ','Ethanol',' ','Propanol',' ','Pentanol');
set(lgnd,'color','none');
grid on
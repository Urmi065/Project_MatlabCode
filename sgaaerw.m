%%%%%%%%%%%%%%%%%%%%%%%%%%%%pentanol
start_1_lam1=[
   -8
   -5
   -4
   0
   4
   5
   8
];

%FUNDAMENTAL MODE imaginary part
start_1_img=[
   0.4
   0.6
   0.84
   1.0
   0.84
   0.60
   0.40
     
    ];

  x=-14:0.0005:14;
  y=interp1(start_1_lam1,start_1_img,x,'spline');
plot(start_1_lam1,start_1_img,'.w',x,y,'cyan','LineWidth',2.2);

set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','xtick',[-14:3:14])
%set(gca,'FontSize',12,'FontName','Times New Roman','fontweight','b','ytick',[1.6:0.2:2.6])
xlabel('Radius','FontSize',18);
ylabel('Intensity Reduction(%','FontSize',18);
%ylim([1.55 2.6]);
xlim([-14 14]);
set(gca,'FontSize',19); % size of tick marks on both axes
lgnd=legend(' ','Intensity curve');
set(lgnd,'color','none');
grid on
%文件打开对话框
uigetfile
doc uigetfile
%规定打开类型为.m文件
uigetfile('*.m')

%输出参数
[a,b,c]=uigetfile('*.m');

%文件保存对话框
uiputfile
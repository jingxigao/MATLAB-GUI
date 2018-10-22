function varargout = mouse_event(varargin)
% MOUSE_EVENT MATLAB code for mouse_event.fig
%      MOUSE_EVENT, by itself, creates a new MOUSE_EVENT or raises the existing
%      singleton*.
%
%      H = MOUSE_EVENT returns the handle to a new MOUSE_EVENT or the handle to
%      the existing singleton*.
%
%      MOUSE_EVENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOUSE_EVENT.M with the given input arguments.
%
%      MOUSE_EVENT('Property','Value',...) creates a new MOUSE_EVENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mouse_event_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mouse_event_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mouse_event

% Last Modified by GUIDE v2.5 22-Oct-2018 22:13:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mouse_event_OpeningFcn, ...
                   'gui_OutputFcn',  @mouse_event_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before mouse_event is made visible.
function mouse_event_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mouse_event (see VARARGIN)

% Choose default command line output for mouse_event
handles.output = hObject;

globao buttonmotion;
global buttondown;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mouse_event wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mouse_event_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if strcmp(get(gcf,'selectiontypr'),'normal')
    buttondown=1;
    pos1=get(handles.axes1,'currentpoint')
end


% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if buttondown==1
    pos=get(handles.axes1,'currentpoint');
    line([pos(1,1) pos(1,1)],[pos(1,2) pos(1,2)],'linewidth',4);
    pos1=pos;
end

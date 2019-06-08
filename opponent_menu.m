function varargout = opponent_menu(varargin)
% OPPONENT_MENU MATLAB code for opponent_menu.fig
%      OPPONENT_MENU, by itself, creates a new OPPONENT_MENU or raises the existing
%      singleton*.
%
%      H = OPPONENT_MENU returns the handle to a new OPPONENT_MENU or the handle to
%      the existing singleton*.
%
%      OPPONENT_MENU('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPPONENT_MENU.M with the given input arguments.
%
%      OPPONENT_MENU('Property','Value',...) creates a new OPPONENT_MENU or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before opponent_menu_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to opponent_menu_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help opponent_menu

% Last Modified by GUIDE v2.5 27-Nov-2015 12:51:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @opponent_menu_OpeningFcn, ...
                   'gui_OutputFcn',  @opponent_menu_OutputFcn, ...
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


% --- Executes just before opponent_menu is made visible.
function opponent_menu_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to opponent_menu (see VARARGIN)
guidata(hObject, handles);
axes(handles.background)
image_back = imread('images\\boxers_menu.jpg');                             %Use the image as the background for this menu.
image(image_back)
axis off
axis image

%These commands will add the respective opponent images to display.
%The axes are loaded with images. So as to give a choose an opponent feel to the menu.
axes(handles.axes2)
image(imread('images\\opp1.jpg'))
axis off

axes(handles.axes3)
image(imread('images\\opp2.jpg'))
axis off

axes(handles.axes4)
image(imread('images\\opp3.jpg'))
axis off

axes(handles.axes5)
image(imread('images\\opp4.jpg'))
axis off

axes(handles.axes6)
image(imread('images\\opp5.jpg'))
axis off

axes(handles.axes8)
image(imread('images\\opp6.jpg'))
axis off

axes(handles.axes9)
image(imread('images\\opp7.jpg'))
axis off

axes(handles.axes10)
image(imread('images\\opp8.jpg'))
axis off

axes(handles.axes11)
image(imread('images\\opp9.jpg'))
axis off

axes(handles.axes12)
image(imread('images\\opp10.jpg'))
axis off

axes(handles.axes13)
image(imread('images\\opp11.jpg'))
axis off
% Choose default command line output for opponent_menu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes opponent_menu wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = opponent_menu_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(1)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(2)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(3)

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(4)

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(5)

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(6)

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(7)

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(8)

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(9)

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(10)

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
game(11)
function varargout = HILL(varargin)
% HILL MATLAB code for HILL.fig
%      HILL, by itself, creates a new HILL or raises the existing
%      singleton*.
%
%      H = HILL returns the handle to a new HILL or the handle to
%      the existing singleton*.
%
%      HILL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HILL.M with the given input arguments.
%
%      HILL('Property','Value',...) creates a new HILL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before HILL_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to HILL_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help HILL

% Last Modified by GUIDE v2.5 01-Feb-2017 22:01:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @HILL_OpeningFcn, ...
                   'gui_OutputFcn',  @HILL_OutputFcn, ...
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


% --- Executes just before HILL is made visible.
function HILL_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to HILL (see VARARGIN)

% Choose default command line output for HILL
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


function varargout = HILL_OutputFcn(hObject, eventdata, handles) 


varargout{1} = handles.output;


function Text1_Callback(hObject, eventdata, handles)


function Text1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Text2_CreateFcn(hObject, eventdata, handles)


function sipher1_CreateFcn(hObject, eventdata, handles)


function table_CellEditCallback(hObject, eventdata, handles)


function table2_CellEditCallback(hObject, eventdata, handles)


% --- Executes  La clée matrix 2*2
function pushbutton2_Callback(hObject, eventdata, handles)
global cle 
cle = get(handles.table,'data');
set(handles.table,'visible','on')
set(handles.table2,'visible','off')

% --- Executes  La clée matrix 3*3
function pushbutton3_Callback(hObject, eventdata, handles)
global cle
cle = get(handles.table2,'data');
set(handles.table2,'visible','on')
set(handles.table,'visible','off')


% --- Executes on button press in Crypt.
function Crypt_Callback(hObject, eventdata, handles)

global cle
msg = get(handles.Text1,'string');
 
if (determinant(cle) ~= 0)
    
    if(verefie(msg))
      code = crypt(msg,cle);
      set(handles.sipher1,'string',code,'ForegroundColor','green')
    else
      set(handles.sipher1,'string','text siesé pas correct','ForegroundColor','red')
    end
else
    set(handles.sipher1,'string','Le determinant de clée est eguale zéro','ForegroundColor','red')
end


function sipher2_Callback(hObject, eventdata, handles)


function sipher2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white')
end


% --- Executes on button press in decrypt.
function decrypt_Callback(hObject, eventdata, handles)

global cle
code = get(handles.sipher2,'string');

 if(determinant(cle) ~= 0)
    if(verefie(code))
      msg = decrypt(code,cle);
      set(handles.Text2,'string',msg,'ForegroundColor','green')
    else
      set(handles.Text2,'string','text siesé pas correct','ForegroundColor','red')
    end
 else
     set(handles.Text2,'string','Le determinant de clée est eguale zéro','ForegroundColor','red')
 end

% --- Executes on button press in showAll--------> elle afficher deux
% graphisme chiffrement et déchiffrement
function showAll_Callback(hObject, eventdata, handles)

set(handles.showAll,'enable','off')
set(handles.chiffrement,'enable','on')
set(handles.dichiffre,'enable','on')
set(handles.panel1,'visible','on')
set(handles.panel2,'visible','on')

% --- Executes on button press in chiffrement----> afficher la zone
% chiffrement
function chiffrement_Callback(hObject, eventdata, handles)

set(handles.chiffrement,'enable','off')
set(handles.showAll,'enable','on')
set(handles.dichiffre,'enable','on')
set(handles.panel1,'visible','on')
set(handles.panel2,'visible','off')

% --- Executes on button press in dichiffre----> afficher la zone
% déchiffrement
function dichiffre_Callback(hObject, eventdata, handles)

set(handles.dichiffre,'enable','off')
set(handles.showAll,'enable','on')
set(handles.chiffrement,'enable','on')
set(handles.panel2,'visible','on')
set(handles.panel1,'visible','off')

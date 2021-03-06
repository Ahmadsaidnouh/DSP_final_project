function varargout = gui1(varargin)
% GUI1 MATLAB code for gui1.fig
%      GUI1, by itself, creates a new GUI1 or raises the existing
%      singleton*.
%
%      H = GUI1 returns the handle to a new GUI1 or the handle to
%      the existing singleton*.
%
%      GUI1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI1.M with the given input arguments.
%
%      GUI1('Property','Value',...) creates a new GUI1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui1

% Last Modified by GUIDE v2.5 21-May-2022 03:18:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui1_OpeningFcn, ...
                   'gui_OutputFcn',  @gui1_OutputFcn, ...
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


% --- Executes just before gui1 is made visible.
function gui1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui1 (see VARARGIN)

% Choose default command line output for gui1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function fileName_Callback(hObject, eventdata, handles)
% hObject    handle to fileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fileName as text
%        str2double(get(hObject,'String')) returns contents of fileName as a double


% --- Executes during object creation, after setting all properties.
function fileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in filterType.
function filterType_Callback(hObject, eventdata, handles)
% hObject    handle to filterType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns filterType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from filterType


% --- Executes during object creation, after setting all properties.
function filterType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g1_Callback(hObject, eventdata, handles)
% hObject    handle to g1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g1 as text
%        str2double(get(hObject,'String')) returns contents of g1 as a double


% --- Executes during object creation, after setting all properties.
function g1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g2_Callback(hObject, eventdata, handles)
% hObject    handle to g2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g2 as text
%        str2double(get(hObject,'String')) returns contents of g2 as a double


% --- Executes during object creation, after setting all properties.
function g2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g3_Callback(hObject, eventdata, handles)
% hObject    handle to g3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g3 as text
%        str2double(get(hObject,'String')) returns contents of g3 as a double


% --- Executes during object creation, after setting all properties.
function g3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g4_Callback(hObject, eventdata, handles)
% hObject    handle to g4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g4 as text
%        str2double(get(hObject,'String')) returns contents of g4 as a double


% --- Executes during object creation, after setting all properties.
function g4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g5_Callback(hObject, eventdata, handles)
% hObject    handle to g5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g5 as text
%        str2double(get(hObject,'String')) returns contents of g5 as a double


% --- Executes during object creation, after setting all properties.
function g5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g6_Callback(hObject, eventdata, handles)
% hObject    handle to g6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g6 as text
%        str2double(get(hObject,'String')) returns contents of g6 as a double


% --- Executes during object creation, after setting all properties.
function g6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g7_Callback(hObject, eventdata, handles)
% hObject    handle to g7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g7 as text
%        str2double(get(hObject,'String')) returns contents of g7 as a double


% --- Executes during object creation, after setting all properties.
function g7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g8_Callback(hObject, eventdata, handles)
% hObject    handle to g8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g8 as text
%        str2double(get(hObject,'String')) returns contents of g8 as a double


% --- Executes during object creation, after setting all properties.
function g8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function g9_Callback(hObject, eventdata, handles)
% hObject    handle to g9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of g9 as text
%        str2double(get(hObject,'String')) returns contents of g9 as a double


% --- Executes during object creation, after setting all properties.
function g9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to g9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fs_Callback(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fs as text
%        str2double(get(hObject,'String')) returns contents of fs as a double


% --- Executes during object creation, after setting all properties.
function fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in fsCheckBox.
function fsCheckBox_Callback(hObject, eventdata, handles)
% this is to control whether the sampling rate of the output will be from
% the user or from the original file sampling rate
chkValue = get(handles.fsCheckBox,'Value');
if chkValue == 0
    set(handles.fsLabel, 'Enable', 'Off');
    set(handles.fs, 'Enable', 'Off')
else
    set(handles.fsLabel, 'Enable', 'On');
    set(handles.fs, 'Enable', 'On')
end


% --- Executes on button press in runBtn.
function runBtn_Callback(hObject, eventdata, handles)
isValidInputs = validateInputs(handles);
if isValidInputs
    chkValue = get(handles.fsCheckBox,'Value');
    fs = 0;
    default = 1;
    if chkValue == 1
       fs = str2double(get(handles.fs, 'String'));
       default = 0;
    end
    g1 = str2double(get(handles.g1,'String'));
    g2 = str2double(get(handles.g2,'String'));
    g3 = str2double(get(handles.g3,'String'));
    g4 = str2double(get(handles.g4,'String'));
    g5 = str2double(get(handles.g5,'String'));
    g6 = str2double(get(handles.g6,'String'));
    g7 = str2double(get(handles.g7,'String'));
    g8 = str2double(get(handles.g8,'String'));
    g9 = str2double(get(handles.g9,'String'));
    
    file_name = get(handles.fileName, 'String');
    
    filter_type = get(handles.filterType, 'Value');
    
    gains = [g1, g2, g3, g4, g5, g6, g7, g8, g9];
    
    disp('valid')
    
    main(file_name, default, fs, filter_type, gains);
      
    
end

function isValid = validateInputs(handles)
fileName = get(handles.fileName, 'String');
if isempty(fileName)
    errordlg('Must enter file name!!');
    isValid = 0;
    return 
end

selectedIndex = get(handles.filterType, 'Value');
if selectedIndex == 1
    errordlg('Must choose filter type!!');
    isValid = 0;
    return
end

chkValue = get(handles.fsCheckBox,'Value');
if chkValue == 1
    fs = get(handles.fs, 'String');
    if isempty(fs)
        errordlg('Must enter output sampling rate!!');
        isValid = 0;
        return
    elseif isnan(str2double(fs))
        errordlg('Output sample rate must be a real number more than 32000 Hz!!');
        isValid = 0;
        return
    elseif str2double(fs) <= 32000
        errordlg('Output sample rate must be a real number more than 32000 Hz!!');
        isValid = 0;
        return
    end
end
g1 = get(handles.g1,'String');
if isempty(g1)
    errordlg('Must enter gain 1!!');
    isValid = 0;
    return
elseif isnan(str2double(g1))
    errordlg('Gain 1 must be a real number!!');
    isValid = 0;
    return
end
% 
g2 = get(handles.g2,'String');
if isempty(g2)
    errordlg('Must enter gain 2!!');
    isValid = 0;
    return
elseif isnan(str2double(g2))
    errordlg('Gain 2 must be a real number!!');
    isValid = 0;
    return
end
% 
g3 = get(handles.g3,'String');
if isempty(g3)
    errordlg('Must enter gain 3!!');
    isValid = 0;
    return
elseif isnan(str2double(g3))
    errordlg('Gain 3 must be a real number!!');
    isValid = 0;
    return
end
% 
g4 = get(handles.g4,'String');
if isempty(g4)
    errordlg('Must enter gain 4!!');
    isValid = 0;
    return
elseif isnan(str2double(g4))
    errordlg('Gain 4 must be a real number!!');
    isValid = 0;
    return
end
% 
g5 = get(handles.g5,'String');
if isempty(g5)
    errordlg('Must enter gain 5!!');
    isValid = 0;
    return
elseif isnan(str2double(g5))
    errordlg('Gain 5 must be a real number!!');
    isValid = 0;
    return
end
% 
g6 = get(handles.g6,'String');
if isempty(g6)
    errordlg('Must enter gain 6!!');
    isValid = 0;
    return
elseif isnan(str2double(g6))
    errordlg('Gain 6 must be a real number!!');
    isValid = 0;
    return
end
% 
g7 = get(handles.g7,'String');
if isempty(g7)
    errordlg('Must enter gain 7!!');
    isValid = 0;
    return
elseif isnan(str2double(g7))
    errordlg('Gain 7 must be a real number!!');
    isValid = 0;
    return
end
% 
g8 = get(handles.g8,'String');
if isempty(g8)
    errordlg('Must enter gain 8!!');
    isValid = 0;
    return
elseif isnan(str2double(g8))
    errordlg('Gain 8 must be a real number!!');
    isValid = 0;
    return
end
% 
g9 = get(handles.g9,'String');
if isempty(g9)
    errordlg('Must enter gain 9!!');
    isValid = 0;
    return
elseif isnan(str2double(g9))
    errordlg('Gain 9 must be a real number!!');
    isValid = 0;
    return
end
isValid = 1;

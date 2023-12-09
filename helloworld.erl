%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% module: hello world program             %%
%% author: Mohanakkumar.M                  %%
%% mailid: mohanakkumar.m@saint-gobain.com %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


-module(helloworld).
% -import(io,[fwrite/2]). 
-export([stop/0]).
-export([start/0]). 
-export([start/1]).
-export([variable_number/0]).
-export([variable_name/0]).
-export([while/1,while/2, startw/0]). 
-export([for/2,start_for/0]). 
-export([start_case/1]).
-export([add/2,start_add/0]). 
-export([start_anayums/0]). 
-export([add_2/2,add_2/3,start_mfun/0]). 
-export([fac/1,start_fac/0]).
-import(string,[to_upper/1]). 
-export([start_toupper/0]). 


start() -> 
   io:fwrite("Hello, world Mohan!\n"),
   io:fwrite("~w\n",[1+1]),            %number data type
   io:fwrite(atom1),                   %atom data type
   io:fwrite(2 == 3),                  %bool data type
   Bin1 = <<10,20,30>>,                %binary list
   X = binary_to_list(Bin1),           %binary to list build in function
   io:fwrite("~w\n",[X]),              %num datatype to print
   P = {john,24,{june,25}} ,
   ElementAt3 = element(3, P),
   io:format("Element at index 3: ~p~n", [ElementAt3]),
   M1 = #{iid=>12344,key=>"r_voltage",time=>"12312873",value=>"324"}, 
   io:fwrite("~w\n",[map_size(M1)]),
   L = [10,20,30] , 
   io:fwrite("~w\n",[length(L)]).


   % io:fwrite("~w\n",[(P)]).
%one more function for stop
start(L) -> 
   io:fwrite("~n~w",[L+1]). 

stop() ->
   io:fwrite("Hello, world Mohdsdsan! ~n").


%One key thing to note in Erlang is that variables are immutable,

variable_number() ->
   X = 40, 
   Y = 50, 
   Result = X + Y, 
   io:fwrite("~w~n",[Result]).

variable_name() ->
   X = 40, 
   Y = 50, 
   Result = X + Y, 
   io:fwrite("~w~n",[Result]).

% -module(helloworld). 

% using recursion function to achieve while operation.
while(L) -> while(L,1). 
while([], Acc) -> Acc;

%
while([_|T], Acc) ->
   io:fwrite("~n~w",[Acc]), 
   while(T,Acc+1). 
   
   startw() -> 
   X = [1,2,3,4,5,6], 
   while(X).


%

%
%using recursion function to achieve for operation.
for(0,_) -> 
   []; 

for(N,Term) when N > 0 -> 
   io:fwrite("Hello~n"),
   io:fwrite("Term~n~w",[Term]),
   [Term|for(N-1,Term)]. 
   
start_for() -> 
   for(5,1).


start_case(A) -> 
      % A = 5,
      io:fwrite("~n~w\n",[A]),
      case A of 
         5 -> io:fwrite("The value of A is 5"); 
         6 -> io:fwrite("The value of A is 6");
         7 -> io:fwrite("The value of A is 7");
         _ -> io:fwrite("A is not 5, 6, or 7, A is : ~w~n",[A]) 
      end.

      

add(X,Y) -> 
   Z = X+Y, 
   io:fwrite("~w~n",[Z]). 
   
start_add() -> 
   add(5,6).

start_anayums() -> 
   Fn = fun() -> 
      io:fwrite("Anonymous Function~n") end, 
   Fn().

add_2(X,Y) -> 
   Z = X+Y, 
   io:fwrite("~w~n",[Z]). 
   
add_2(X,Y,Z) -> 
   A = X+Y+Z, 
   io:fwrite("~w~n",[A]). 
 
start_mfun() ->
   add_2(5,6), 
   add_2(5,6,6).


fac(N) when N == 0 -> 1; 
fac(N) when N > 0 -> N*fac(N-1). 

start_fac() -> 
   X = fac(4), 
   io:fwrite("~w",[X]).

   start_toupper() -> 
      Str1 = "hello world", 
      Str2 = to_upper(Str1), 
      io:fwrite("~p~n",[Str2]).
%

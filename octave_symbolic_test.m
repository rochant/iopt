clear all
clc

pkg load symbolic
syms x
f=2*sin(cos(x)/2)

df=diff(f, x)
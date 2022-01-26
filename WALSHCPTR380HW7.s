{\rtf1\ansi\ansicpg1252\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\margl1440\margr1440\vieww17860\viewh9320\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 ########################################################################\
#         CPTR 380 HW 7\
#     Filename:   WALSHHWCPTR380HW7.s\
#     Author:      E.Walsh\
#     Version:     1/23/22\
#     Processor:   MIPS\
#     Notes:       for execution using the SPIM simulator\
#             Implements this functionality:\
#                     for(int i = 0; I < a; I++)\{\
#					for(int j = 0; j < b; j++)\{\
#						D[4*j] = I+j;\
#					\}\
#				  \}\
########################################################################\
\pard\pardeftab720\partightenfactor0
\cf2 	.data\
arrayD:	.space 100		# 100 bytes (25 words) reserved for arrayD\
varA:	.word  6			\
varB:   	.word  10\
varZ:	.word  0\
\pard\pardeftab720\partightenfactor0
\cf2 \
}
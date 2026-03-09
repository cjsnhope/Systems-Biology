
getwd()
setwd("/Users/jisoochoi/Desktop/2026-1/수업/시스템생물학/AS1-1")

# 1. 데이터 불러오기
df <- read.csv("as1_data1.csv")

str(df)

# 2. 그래프 그리기 초기 설정
# R의 plot은 그리는 순서가 중요합니다. (빈 캔버스 -> 선 추가 -> 장식)
# yaxs="r"이 기본값이라 생략해도 되지만, 이것이 '4% 여백'을 만드는 핵심 옵션입니다.
plot(1, type="n",                            # 빈 그래프 생성
     xlim=c(-1.5, 31.5),                     # X축 범위 (양옆 여백)
     ylim=c(0.3, 1.3),                       # Y축 범위 (교수님 지시사항)
     xlab="", ylab="",                       # 라벨은 나중에 따로 설정
     axes=FALSE,                             # 축도 나중에 수동으로 그림
     main=""                                 # 제목도 나중에
)

# 3. 선 그리기 (Blue, Red, Green)
# lwd=2는 선 굵기입니다.
lines(df$time, df$x, col="blue", lwd=2)
lines(df$time, df$y, col="red", lwd=2)
lines(df$time, df$z, col="#66FF66", lwd=2)   # 연두색 (z)

# 4. 축(Axis) 그리기
# axis(1)은 X축(아래), axis(2)는 Y축(왼쪽)
axis(1, at=seq(0, 30, 5), cex.axis=1.0)      # 0부터 30까지 5단위
axis(2, at=seq(0.4, 1.2, 0.2), las=0, cex.axis=1.0) 
# las=0: 글자를 축에 평행하게 (세로로) 눕힘 -> 교수님 사진 특징

# 5. 테두리 박스 그리기
box()

# 6. 제목 및 축 이름 설정
# font=2는 굵게(Bold)입니다.
title(main="A dynamic behavior of a system", font.main=2, cex.main=1.5)
title(xlab="Time", line=2.5, cex.lab=1.2)
title(ylab="Concentrations", line=2.5, cex.lab=1.2)

# 7. 범례(Legend) 추가
legend("topright",                           # 위치
       legend=c("x", "y", "z"),              # 이름
       col=c("blue", "red", "#66FF66"),      # 색상
       lty=1, lwd=2,                         # 선 스타일 및 굵기
       horiz=TRUE,                           # 가로로 나열
       bty="o",                              # 박스 테두리 있음
       inset=c(0.02, 0.02)                   # 그래프 안쪽으로 살짝 들여쓰기
)


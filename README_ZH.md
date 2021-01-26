# FQsolvers
利用 MATLAB 內建功能計算達成在FGO的活動中，使用最少AP達成活動需求的方法
* 相關工具: https://github.com/shinli256/FQsolverData

# Version M1
## 使用方法
* 下載 FQsolverM1.m 至你的 MATLAB 資料夾
* 準備好所需的資料
* 執行程式碼
[OptNum,OptAP]=FQsolver(AP,Contr,Mission,Reach);

## 記號
* m 是活動任務(mission)的數量
* n 是自由任務(free quest)的數量

## 輸入資料
* AP 是 n×1 double 矩陣，代表各個自由任務的AP消耗
* Contr 是 m×n double 矩陣，代表各個自由任務對各項活動需求的貢獻
* Mission 是 m×1 double 矩陣，代表活動的需求
* Reach 是 m×1 double 矩陣，代表已達成的部分

## 輸出資料
* OptNum 是 n×1 double 矩陣，代表各個自由任務應該通關的次數
* OptAP 是 1×1 double，代表總共需要的AP量

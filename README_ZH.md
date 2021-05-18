# FQsolvers
利用 MATLAB 內建功能計算達成在FGO的活動中，使用最少AP達成活動需求的方法
* 相關工具: https://github.com/light-chen-light/FQsolverData

# Version M1&M2
## 使用方法
* (M1) 下載 FQsolverM1.m 至你的 MATLAB 資料夾
* (M2) 下載 FQsolverM2.m 至你的 MATLAB 資料夾
* 準備好所需的資料
* (M1) 輸入並執行指令
* * [OptNum,OptAP]=FQsolverM1(AP,Contr,Mission,Reach);
* (M2) 輸入並執行指令
* * [OptNum,OptAP] = FQsolverM2(AP,ContrCommon,ContrRare,Rare,Mission,Reach);
 
## 記號
* m 是活動任務(mission)的數量
* n 是自由任務(free quest)的數量

## 輸入資料
* AP 是 n×1 double 矩陣，代表各個自由任務的AP消耗
* (M1) Contr 是 m×n double 矩陣，代表各個自由任務對各項活動需求的貢獻
* (M2) ContrCommon 是 m×n double 矩陣，代表各個自由任務，除了稀有敵人以外，對各項活動需求的貢獻
* (M2) ContrRare 是 m×n double 矩陣，代表各個自由任務的稀有敵人對各項活動需求的貢獻
* (M2) Rare 是 1x1 double，代表稀有敵人數量的預設期望值
* Mission 是 m×1 double 矩陣，代表活動的需求
* Reach 是 m×1 double 矩陣，代表已達成的部分

## 輸出資料
* OptNum 是 n×1 double 矩陣，代表各個自由任務應該通關的次數
* OptAP 是 1×1 double，代表總共需要的AP量

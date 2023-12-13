# Python 3.10 With Poetry

## 需求

環境已經安裝docker套件

## 步驟

1. 執行 docker build -t poetry_env .

2. 執行 docker run -v ./:/app -it poetry_env

3. 如果正常執行時會進入 container 裡，確認在 /app 下

4. 生出第一份 **pyproject.toml**

    1. 執行 poetry init，會出現互動訊息
    2. 前面 project 的資訊可以照自己需求填
    3. "Package to add or search for (leave blank to skip)"如果遇到可以先 Enter 跳過
    4. 流程結束後 poetry 應該會建出乾淨的 **pyproject.toml**

5. 使用 poetry add/remove [packages] 新增移除套件

6. 將生成的 **pyproject.toml** 與 **poetry.lock** 複製到需要的專案裡。

7. 執行 exit 離開 container

## 如何重啟

1. 執行 docker container ls -a 找到關閉的 container

2. 執行 docker container start -i {container id} 進入 container

3. 如果忘記帶上 -i 選項，container已經啟動的話，執行 docker container exec -it {container id} bash 進入 container

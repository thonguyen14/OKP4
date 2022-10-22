# Run in Tmux

    apt install tmux
    tmux new -t okp4dupgarde
    okp4d config keyring-backend test && wget -O okp4restake.sh https://raw.githubusercontent.com/thonguyen14/OKP4/main/okp4restake.sh && chmod +x okp4restake.sh

##edit okp4restake.sh file following your node , then run command 

    ./okp4restake.sh
    
- để thoát 
      tmux okp4dupgarde  
      exit
# command tmux
 tham khảo https://www.hostinger.vn/huong-dan/tmux
- Tạo session mới:
      tmux
- Tạo một session mới có tên:

      tmux new -s [name]

- Tạo một session được ghép kênh:

      tmux attach 

- Ghép một session vào Tmux có sẵn:

     tmux attach -t [name]

- Liệt kê các session tmux:

      tmux ls

- Thoát ứng dụng:

      exits
 
 

Part 1
1. [00000009] Realtek RTL8723DE 802.11b/g/n PCIe Adapter
2. ‪9C:30:5B:AB:E0:6F‬
3. 192.168.1.123
4. 255.255.255.0, 64, 128, 64
5. 192.168.1.1
6. My IP address is private

7. 10.0.0.25
8. inet6 fe80::1039:6eff:fe2f:d1e5
9. 127.0.0.1
10. inet6 ::1
11. 10.0.0.25

Part 2
1. sudo apt install jupyter
2. jupyter notebook --no-browser and this is the output:
[I 18:15:30.995 NotebookApp] Serving notebooks from local directory: /home/ubuntu
[I 18:15:30.996 NotebookApp] 0 active kernels
[I 18:15:30.996 NotebookApp] The Jupyter Notebook is running at:
[I 18:15:30.996 NotebookApp] http://localhost:8888/?token=c56a68a2facc444e842a02ac237c97b59e952610437fcced
[I 18:15:30.996 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 18:15:30.996 NotebookApp]

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=c56a68a2facc444e842a02ac237c97b59e952610437fcced

3. I connected the loacl system with these commands:
- jupyter notebook --no-browser --port=8887
- ssh -N -f -i /home/mobaxterm/Desktop/aws.pem  -L localhost:8887:localhost:8887 ubuntu@54.197.86.106

Then I typed localhost:8887 into my browser and it asked for the token which was:
5ed1d62463cf38b1a1916f52f277e3bc7c7469d192556194

4. -N = Do not execute a remote command
   -f = Requests ssh to go to background just before command execution
   -i = Selects a file from which the identity (private key) for public key authentication is read
   -L = Specifies that connections to the given TCP port or Unix socket on the local (client)

The files displayed in the browser are the files/repository in my github

Part 3
1. sudo apt install python-pip
   
2. python3 -m http.server 4444
   Serving HTTP on 0.0.0.0 port 4444 (http://0.0.0.0:4444/) ...

3. sudo lsof -nP -iTCP -sTCP:LISTEN

4. kill 1849 killed the process pid


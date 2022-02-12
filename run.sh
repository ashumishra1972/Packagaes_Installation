wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz 
sudo tar -xvf go1.16.4.linux-amd64.tar.gz   
sudo mv go /usr/local  
export GOROOT=/usr/local/go 	
export GOPATH=$HOME/Projects/Proj1 
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH 
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
mkdir ~/nuclei-templates
nuclei -ut
echo "installation successfull"
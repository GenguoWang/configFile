homeDir = ARGV[0]+"/"

works = [[homeDir+".bashrc",".bashrc"],
         [homeDir+".profile",".profile"]]
for work in works do
    filename = work[0]
    cnt = File.read(filename)
    newCnt = File.read(work[1])
    pattern = /#KingoStart.*#KingoEnd\n/m
    if cnt =~ pattern then
        cnt.sub!(pattern){newCnt}
    else
        cnt << newCnt
    end
    File.write(filename, cnt)
end

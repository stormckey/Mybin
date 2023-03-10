#! /usr/in/zsh
for file in $(find . -name "[^~]*.docx"); do
    md=${file/docx/md}
    echo "Generating "$md
    pandoc -f docx -t markdown --extract-media "image"$file[2,-6] -o $md $file
    cat $md | sed -E 's/{width.*// '  | sed -E 's/height.*}//' |sed -E 's/([0-9]{1,})\\./\1. /'\
    | sed -E 's/^([^0-9])/    \1/'>$md    
    echo Done  
done


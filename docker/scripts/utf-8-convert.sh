find ./../.. -type f -exec file -I {} \; | grep -E 'charset=iso-8859-1|charset=us-ascii|charset=iso-8859-15' | awk -F: '{print $1}' | while read file; do
    encoding=$(file -I "$file" | awk -F= '{print $2}')
    if [[ "$encoding" == "iso-8859-1" ]]; then
        iconv -f ISO-8859-1 -t UTF-8 "$file" >"${file}.utf8"
    elif [[ "$encoding" == "us-ascii" ]]; then
        iconv -f US-ASCII -t UTF-8 "$file" >"${file}.utf8"
    elif [[ "$encoding" == "iso-8859-15" ]]; then
        iconv -f ISO-8859-15 -t UTF-8 "$file" >"${file}.utf8"
    fi
    mv "${file}.utf8" "$file"
done

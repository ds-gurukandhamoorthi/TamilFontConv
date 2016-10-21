FILENM=${1:-/dev/stdin}
#BASE=$(echo $FILENM|sed -e 's/.unix//')
#cat $FILENM | aspell list -l ta |sort |uniq -c| sort -rn >errors.list
#cat $FILENM |sed -e "s/|/'/g" -e"s/\.,/;/g" -e"s/,\./.,/g" | awk 'BEGIN{ORS="\n\n\\>"}{print}'|awk -f ./line_next_to_seyyul.awk| sed -e '/\\>\*/s/\\>//' |sed '/^*/{s/\*//g; s/^/**/; s/$/**/}'| sed -e '/\[\[/s/\]\]/\n&/' | sed -e '/\[\[/,/\]\]/{/^$/!{s/$/**/;s/^[>\\]*/&**/}}'  | sed -e"s/\[\[/'/" -e"s/\]\]/'/" 
cat $FILENM |\
    sed -e "s/|/'/g" -e"s/\.,/;/g" -e"s/,,/.,/g" | #  | -> '    .,  -> ;   
    awk 'BEGIN{ORS="\n\n\\>"}{print}'|
    awk -f ./line_next_to_seyyul.awk|
    sed -e '/\\>\*/s/\\>//' |
    sed '/^*/{s/\*//g; s/^/**/; s/$/**/}'| # On titles, delete title marker (*), then make them bold using **title** markup
    #sed -e '/\[\[/s/\]\]/\n&/' |
    sed -e '/\[\[/s/[- ]*\([0-9]*\) *\]\]/\n&/' |
    sed -e '/\[\[/,/\]\]/{
                    /^$/!{s/$/**/;
                        s/[- ]*\([0-9]*\) *\]\]/]] ^\1^/; #to get superscript
                          s/^[>\\]*/& **/}}'  | # we include a space for alignement with quote, we later delete the space before the "
    sed -e 's/\^\^//'|
    sed -e's/ \*\*\[\[/**"/' -e's/\]\]/"/' #we delete the space before the quote. now the whole SEYYUL would be aligned
#unix2dos $BASE.txt

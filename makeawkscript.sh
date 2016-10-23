FROM=$1
TO=$2
echo "BEGIN{"
echo 'TAMILLETTERPATTERN = "க்ஷ([்ாிீுூெேைொோௌ])?|ஸ்ரீ|[,அஆஇஈஉஊஎஏஐஒஓஔஃ]|([கசதபமனணடரநஙஞவறலளயஜஸஹஷழ]([்ாிீுூெேைொோௌ])?)"'
#we include comma because in the font bamini it has meaning
paste $FROM $TO |sed -e '/.\t./{s/\t/"]="/;
				s/^/map["/;
				s/$/"/;}' |sed -e 's/\\/\\\\/'
echo "}"

cat <<'EOF'
{
n=patsplit($0, array, TAMILLETTERPATTERN, seps)

printf("%s", seps[0])
for(i=1;i<=n;i++){
	LTR=array[i]
	if(map[LTR]){printf ("%s", map[LTR])}else{printf("%s",  LTR)}
	printf("%s", seps[i])
}
printf("\n")

}

EOF


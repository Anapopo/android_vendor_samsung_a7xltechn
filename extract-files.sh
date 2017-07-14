BASE=$HOME/android_vendor_samsung_a7xltechn/proprietary
RAW=/media/samsung-system

rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
DIR=`dirname $FILE`
  if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
  fi
  if [ -d $RAW/$FILE ]; then
cp $RAW/$FILE $BASE/$DIR
  fi
echo 'The file name is':$FILE
done


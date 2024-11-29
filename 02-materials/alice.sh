#!/bin/zsh

# Check if alice.txt exists
if [ -f "alice.txt" ]; then
    echo "\n📋 'alice.txt' already exists, skipping download..."
else
    echo "\n📥 Downloading Alice in Wonderland text file..."
    curl https://raw.githubusercontent.com/LaboratorioSperimentale/Formazione-data_plumbers_corner/refs/heads/main/02-materials/alice.txt > alice.txt
fi

echo "\n📁 Creating output directory 'alice_descr'..."
mkdir -p alice_descr

echo "\n🔍 Finding the 10 most frequent words..."
echo "Results:"
cat alice.txt | tr " " "\n" | sort | uniq -c | sort -nr | head -n10
echo "Saving results to alice_descr/most_freq_10.txt..."
cat alice.txt | tr " " "\n" | sort | uniq -c | sort -nr | head -n10 > alice_descr/most_freq_10.txt

echo "\n🔍 Finding the 20 most frequent words..."
echo "Results:"
cat alice.txt | tr " " "\n" | sort | uniq -c | sort -nr | head -n20
echo "Saving results to alice_descr/most_freq_20.txt..."
cat alice.txt | tr " " "\n" | sort | uniq -c | sort -nr | head -n20 > alice_descr/most_freq_20.txt

echo "\n🔍 Finding the 20 least frequent words..."
echo "Results:"
cat alice.txt | tr " " "\n" | sort | uniq -c | sort -nr | tail -n20
echo "Saving results to alice_descr/less_freq_20.txt..."
cat alice.txt | tr " " "\n" | sort | uniq -c | sort -nr | tail -n20 > alice_descr/less_freq_20.txt

echo "\n📚 Creating complete word frequency dictionary in alphabetical order..."
echo "Saving to alice_descr/alice_dictionary.txt..."
cat alice.txt | tr " " "\n" | sort | uniq -c | sort -k 2 > alice_descr/alice_dictionary.txt

echo "\n✅ Analysis complete! All results have been saved in the 'alice_descr' directory."
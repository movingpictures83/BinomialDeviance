# BinomialDeviance
# Language: R
# Input: CSV (network)
# Output: CSV (distances)
# Tested with: PluMA 1.0, R 4.0.0
# Dependency: vegan_2.5.6

PluMA plugin that computes a dissimilariy index using the Binomial Deviance algorithm (McArdle and Anderson, 2001), useful in community ecology.

This plugin takes an input CSV file with samples as rows and normalized abundances of all community members as columns.
It will produce an output CSV file with samples as both rows and columns, with entry (i, j) the measure of dissimilarity between sample i and sample j.
Note this matrix is symmetric.

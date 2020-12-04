data = '1531
1959
1344
1508
1275
1729
1904
1740
1977
1992
1821
1647
1404
1893
1576
1509
1995
1637
1816
1884
1608
1943
1825
1902
1227
1214
1675
1650
1752
1818
862
2006
227
1504
1724
1961
1758
1803
1991
1126
1909
1643
1980
1889
811
1699
1654
1734
1770
1754
1828
1811
1997
1767
1854
1653
1800
1762
1962
1797
877
1660
1895
1939
1679
1496
1606
1262
1727
2005
1796
1595
1846
1822
1974
1829
1347
1341
1875
1726
1963
1659
337
1826
1777
1523
1979
1805
1987
2009
1993
374
1546
1706
1748
1743
1725
281
1317
1839
1683
1794
1898
1824
1960
1292
1876
1760
1956
1701
1565
1680
1932
1632
1494
1630
1838
1863
1328
1490
1751
1707
1567
1917
1318
1861
519
1716
1891
1636
1684
1200
1933
1911
1809
1967
1731
1921
1827
1663
1720
1976
1236
1986
1942
1656
1733
1541
1640
1518
1897
1676
1307
1978
1998
1674
1817
1845
1658
1639
1842
1929
1972
2010
1951
858
1928
1562
1787
1916
1561
1694
1944
1922
1882
1691
589
1940
1624
1570
1557
1791
1492
1919
1615
1571
1657
1984
1521
1766
1790
1782
1874
1198
1764
1278
1688
1905
1786
1281'

split_data = data.split
# final_data = new_data.map {|num| num.to_i}
# the &:method_name calls the method on every array element
final_data = split_data.map(&:to_i)

# p final_data
x, y = final_data.combination(2).detect { |x, y| x + y == 2020 }
puts "Numbers are: #{x} and #{y}"
puts "Total is: #{x + y}"
puts "Product is: #{x * y}"
puts  ''
a, b, c = final_data.combination(3).detect { |a, b, c| a + b + c == 2020 }
puts "Numbers are: #{a}, #{b}, #{c}"
puts "Total is: #{a + b + c}"
puts "Product is: #{a * b * c}"

#################################
# why this won't work- when tracing through the code,
# note that the flow through the array is unidirectional
# so the numbers that have been passed are not accounted for! 
# final_data = [1, 2, 3, 4, 5]
# sum = 2
# final_data.each do |num|
#   if (sum + num = 8) && (num != 8)
#     puts sum
#     puts num
#   elsif
#     sum = num
#   end
# end

#NOTES:
# --- Day 1: Report Repair ---
# After saving Christmas five years in a row, you've decided to take a vacation at a nice resort on a tropical island. Surely, Christmas will go on without you.

# The tropical island has its own currency and is entirely cash-only. The gold coins used there have a little picture of a starfish; the locals just call them stars. None of the currency exchanges seem to have heard of them, but somehow, you'll need to find fifty of these coins by the time you arrive so you can pay the deposit on your room.

# To save your vacation, you need to get all fifty stars by December 25th.

# Collect stars by solving puzzles. Two puzzles will be made available on each day in the Advent calendar; the second puzzle is unlocked when you complete the first. Each puzzle grants one star. Good luck!

# Before you leave, the Elves in accounting just need you to fix your expense report (your puzzle input); apparently, something isn't quite adding up.

# Specifically, they need you to find the two entries that sum to 2020 and then multiply those two numbers together.

# For example, suppose your expense report contained the following:

# 1721
# 979
# 366
# 299
# 675
# 1456
# In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

# Of course, your expense report is much larger. Find the two entries that sum to 2020; what do you get if you multiply them together?

# Your puzzle answer was 567171.

# --- Part Two ---
# The Elves in accounting are thankful for your help; one of them even offers you a starfish coin they had left over from a past vacation. They offer you a second one if you can find three numbers in your expense report that meet the same criteria.

# Using the above example again, the three entries that sum to 2020 are 979, 366, and 675. Multiplying them together produces the answer, 241861950.

# In your expense report, what is the product of the three entries that sum to 2020?

# Your puzzle answer was 212428694.

# Both parts of this puzzle are complete! They provide two gold stars: **
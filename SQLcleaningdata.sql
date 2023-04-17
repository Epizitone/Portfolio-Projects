Select *
From [¨PortfolioProject]..NashvilleHousing



ALTER TABLE [¨PortfolioProject]..NashvilleHousing
Add Sales_date Date


UPDATE [¨PortfolioProject]..NashvilleHousing
SET Sales_date = Convert(Date,SaleDate)


Select *
From [¨PortfolioProject]..NashvilleHousing

ALTER TABLE [¨PortfolioProject]..NashvilleHousing
DROP  column  New_date


Select PropertyAddress
From [¨PortfolioProject]..NashvilleHousing
Where PropertyAddress is Null

Select PARSENAME(REPLACE(PropertyAddress, ',','.'),2),
PARSENAME(REPLACE(PropertyAddress, ',','.'),1)
From [¨PortfolioProject]..NashvilleHousing


Select PARSENAME(REPLACE(OwnerAddress, ',','.'),3),
PARSENAME(REPLACE(OwnerAddress, ',','.'),2),
PARSENAME(REPLACE(OwnerAddress, ',','.'),1)
From [¨PortfolioProject]..NashvilleHousing

Select Distinct(SoldAsVacant), Count(SoldAsVacant)
From [¨PortfolioProject]..NashvilleHousing
Group By SoldAsVacant
Order By 2

Select SoldAsVacant,
Case When SoldAsVacant = 'Y' then 'Yes'
	When SoldAsVacant = 'N' then 'No'
	Else SoldAsVacant
	End
From [¨PortfolioProject]..NashvilleHousing

Select Distinct(SoldAsVacant), Count(SoldAsVacant)
From [¨PortfolioProject]..NashvilleHousing
Group By SoldAsVacant
Order By 2

update [¨PortfolioProject]..NashvilleHousing

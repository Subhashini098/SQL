Create Trigger Products_UPDATE
  ON Products
  After UPDATE
AS
BEGIN
    Declare @Disc_percent Decimal(9,2)
	Declare @Prod_ID int

	Select @Prod_ID = ProductID, @Disc_percent = DiscountPercent from inserted

	If (@Disc_percent) > 0 and (@Disc_percent) <1
	UPDATE Products  SET DiscountPercent = @Disc_percent *100 where ProductID = @Prod_ID
	If (@Disc_percent < 0 or @Disc_percent >100)
	BEGIN
	ROLLBACK TRAN
	RAISERROR ('DiscountPercent must be greater than 0 and less than 100', 16,1)
	END
END
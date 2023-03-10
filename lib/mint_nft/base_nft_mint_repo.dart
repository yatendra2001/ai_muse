abstract class BaseNFTMintRepo {
  Future<String?> generateImageFromAI({required String prompt});

  Future<String> storeFileInDirectory(
      {required String url,
      required String title,
      required String description});

  Future<String> uploadImageToIPFS(
      {required String imageUrl,
      required String nftName,
      required String description});

  Future<void> mintNFTUsingAPI(
      {required String chain,
      required String NFT_Name,
      required String NFT_Description,
      required String mintingAddress,
      required String imageURL});
}

.class Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;
.super Lcom/bilibili/tv/widget/FixLinearLayoutManager;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bilibili/tv/ui/video/VideoDetailActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;


# direct methods
.method constructor <init>(Lcom/bilibili/tv/ui/video/VideoDetailActivity;Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    .prologue
    .line 227
    if-eqz p1, :cond_47

    .line 228
    invoke-virtual {p0, p1}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->d(Landroid/view/View;)I

    move-result v0

    .line 229
    const/16 v1, 0x11

    if-eq p2, v1, :cond_44

    .line 230
    const/16 v1, 0x21

    if-eq p2, v1, :cond_3f

    .line 231
    const/16 v1, 0x42

    if-eq p2, v1, :cond_37

    .line 232
    const/16 v0, 0x82

    if-ne p2, v0, :cond_3f

    iget-object v0, p0, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->this$0:Lcom/bilibili/tv/ui/video/VideoDetailActivity;

    # getter for: Lcom/bilibili/tv/ui/video/VideoDetailActivity;->o:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity;->access$000(Lcom/bilibili/tv/ui/video/VideoDetailActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 233
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$h;

    move-result-object v0

    .line 234
    if-nez v0, :cond_2c

    .line 235
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.GridLayoutManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_2c
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 238
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->c(I)Landroid/view/View;

    move-result-object p1

    .line 249
    :cond_36
    :goto_36
    return-object p1

    .line 240
    :cond_37
    invoke-virtual {p0}, Lcom/bilibili/tv/ui/video/VideoDetailActivity$1;->H()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_36

    .line 247
    :cond_3f
    invoke-super {p0, p1, p2}, Lcom/bilibili/tv/widget/FixLinearLayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_36

    .line 244
    :cond_44
    if-nez v0, :cond_3f

    goto :goto_36

    .line 249
    :cond_47
    const/4 p1, 0x0

    goto :goto_36
.end method

.class public final Lbl/aff;
.super Lbl/ady;
.source "aff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbl/aff$d;,
        Lbl/aff$c;,
        Lbl/aff$b;,
        Lbl/aff$f;,
        Lbl/aff$e;,
        Lbl/aff$a;
    }
.end annotation


# static fields
.field public static final Companion:Lbl/aff$a;

.field private static final g:Ljava/lang/String; = "ranking_type_or_tid"

.field private static final h:I = 0x2


# instance fields
.field private c:Lbl/aff$c;

.field private d:Lbl/aff$b;

.field private e:Z

.field private f:I

.field private is_loading:Z

.field private need_more:Z

.field private page_number:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lbl/aff$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbl/aff$a;-><init>(Lbl/bbg;)V

    sput-object v0, Lbl/aff;->Companion:Lbl/aff$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lbl/ady;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/aff;->need_more:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lbl/aff;->page_number:I

    return-void
.end method

.method static synthetic access$000(Lbl/aff;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lbl/aff;->e:Z

    return v0
.end method

.method static synthetic access$002(Lbl/aff;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lbl/aff;->e:Z

    return p1
.end method

.method static synthetic access$100(Lbl/aff;)Lbl/aff$c;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lbl/aff;->c:Lbl/aff$c;

    return-object v0
.end method

.method static synthetic access$200(Lbl/aff;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lbl/aff;->page_number:I

    return v0
.end method

.method static synthetic access$302(Lbl/aff;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lbl/aff;->need_more:Z

    return p1
.end method

.method static synthetic access$402(Lbl/aff;Z)Z
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lbl/aff;->is_loading:Z

    return p1
.end method

.method private final e()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lbl/aff;->d:Lbl/aff$b;

    if-nez v0, :cond_7

    .line 184
    invoke-static {}, Lbl/bbi;->a()V

    .line 186
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbl/aff;->is_loading:Z

    .line 187
    iget v0, p0, Lbl/aff;->page_number:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbl/aff;->page_number:I

    .line 188
    iget v0, p0, Lbl/aff;->f:I

    if-lez v0, :cond_20

    sget-object v0, Lbl/afe;->a:Lbl/afe;

    iget v1, p0, Lbl/aff;->f:I

    iget v2, p0, Lbl/aff;->page_number:I

    iget-object v3, p0, Lbl/aff;->d:Lbl/aff$b;

    invoke-virtual {v0, v1, v2, v3}, Lbl/afe;->a(IILbl/vn;)V

    .line 190
    :goto_1f
    return-void

    .line 189
    :cond_20
    sget-object v0, Lbl/afe;->a:Lbl/afe;

    const/4 v1, 0x2

    iget v2, p0, Lbl/aff;->page_number:I

    iget-object v3, p0, Lbl/aff;->d:Lbl/aff$b;

    invoke-virtual {v0, v1, v2, v3}, Lbl/afe;->b(IILbl/vn;)V

    goto :goto_1f
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 68
    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lbl/bbi;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Lbl/ady;->a(Landroid/support/v7/widget/RecyclerView;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lbl/aff;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_16

    .line 72
    const-string v1, "ranking_type_or_tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbl/aff;->f:I

    .line 74
    :cond_16
    new-instance v0, Lbl/aff$b;

    invoke-direct {v0, p0}, Lbl/aff$b;-><init>(Lbl/aff;)V

    iput-object v0, p0, Lbl/aff;->d:Lbl/aff$b;

    .line 75
    new-instance v1, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;

    invoke-virtual {p0}, Lbl/aff;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {p0}, Lbl/aff;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 77
    if-nez v0, :cond_35

    .line 78
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.bilibili.tv.ui.ranking.RankingActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_35
    new-instance v2, Lbl/aff$e;

    check-cast v0, Lcom/bilibili/tv/ui/ranking/RankingActivity;

    invoke-direct {v2, p0, v0}, Lbl/aff$e;-><init>(Lbl/aff;Lcom/bilibili/tv/ui/ranking/RankingActivity;)V

    invoke-virtual {v1, v2}, Lcom/bilibili/tv/widget/side/SideRightGridLayoutManger;->a(Lcom/bilibili/tv/widget/border/BorderGridLayoutManager$a;)V

    .line 81
    new-instance v0, Lbl/aff$c;

    invoke-direct {v0}, Lbl/aff$c;-><init>()V

    iput-object v0, p0, Lbl/aff;->c:Lbl/aff$c;

    .line 82
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$h;)V

    .line 83
    const v0, 0x7f06009b

    invoke-static {v0}, Lbl/adl;->b(I)I

    move-result v0

    .line 84
    const v1, 0x7f0600e9

    invoke-static {v1}, Lbl/adl;->b(I)I

    move-result v1

    .line 85
    const v2, 0x7f060158

    invoke-static {v2}, Lbl/adl;->b(I)I

    move-result v2

    .line 86
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 87
    new-instance v2, Lbl/aff$f;

    invoke-direct {v2, v0, v1}, Lbl/aff$f;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 100
    iget-object v0, p0, Lbl/aff;->c:Lbl/aff$c;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 101
    invoke-virtual {p0}, Lbl/aff;->i()V

    .line 102
    invoke-direct {p0}, Lbl/aff;->e()V

    .line 103
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lbl/aff;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbl/aff;->c:Lbl/aff$c;

    if-eqz v0, :cond_19

    .line 158
    iget-object v0, p0, Lbl/aff;->c:Lbl/aff$c;

    .line 159
    if-nez v0, :cond_11

    .line 160
    invoke-static {}, Lbl/bbi;->a()V

    .line 162
    :cond_11
    invoke-virtual {v0}, Lbl/aff$c;->a()I

    move-result v0

    if-lez v0, :cond_19

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lbl/ady;->d_()V

    .line 179
    invoke-direct {p0}, Lbl/aff;->e()V

    .line 180
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lbl/aff;->c:Lbl/aff$c;

    .line 172
    iput-object v0, p0, Lbl/aff;->d:Lbl/aff$b;

    .line 173
    invoke-super {p0}, Lbl/ady;->onDestroyView()V

    .line 174
    return-void
.end method

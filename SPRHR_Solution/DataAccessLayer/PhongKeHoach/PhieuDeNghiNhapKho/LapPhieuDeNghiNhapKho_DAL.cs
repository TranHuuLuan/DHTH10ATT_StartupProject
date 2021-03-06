﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BusinessEntities.PhongKeHoach;

namespace DataAccessLayer.PhongKeHoach.PhieuDeNghiNhapKho
{
    public class LapPhieuDeNghiNhapKho_DAL
    {
        //Check PDNNK
        //GetALLPDNNK
        //GetPDNNK By Ma
        //GetALLCTPDNNK By Ma
        SPRHR_SolutionDataContext db = new SPRHR_SolutionDataContext();
        public bool CheckCoKhongPDNNK(string SoPhieu)
        {
            var c = from i in db.PhieuDNNKs
                    where i.MaPhieuDNNK == SoPhieu
                    select i;
            if (c.Any())
            {
                return true;
            }
            throw new Exception("Invaild PDNNK");
        }

        public List<ePhieuDeNghiNhapKho> GetALLPDNNK()
        {
            List<ePhieuDeNghiNhapKho> ls = new List<ePhieuDeNghiNhapKho>();
            var c = from i in db.PhieuDNNKs
                    select i;
            foreach(PhieuDNNK Phieu in c.ToList())
            {
                ePhieuDeNghiNhapKho PDNNK = new ePhieuDeNghiNhapKho();
                PDNNK.SoPhieuDeNghiNhapKho = Phieu.MaPhieuDNNK;
                PDNNK.MaHoaDonNhaCungCap = Phieu.MaHoaDonNCC;
                PDNNK.MaKho = Phieu.MaKho;
                PDNNK.MaNhanVien = Phieu.MaNhanVien;
                PDNNK.NgayLap = Phieu.NgayLap;
                PDNNK.MoTa = Phieu.MoTa;
                PDNNK.TinhTrang = Phieu.tinhtrang;
                ls.Add(PDNNK);
            }
            return ls;
        }
        //Get ALL PDNNK by NhanVien,By Kho ...... pending
        public List<ePhieuDeNghiNhapKho> GetPDNNKByMa(string SoPhieu)
        {
            List<ePhieuDeNghiNhapKho> ls = new List<ePhieuDeNghiNhapKho>();
            var c = from i in db.PhieuDNNKs
                    where i.MaPhieuDNNK == SoPhieu
                    select i;
            foreach (PhieuDNNK Phieu in c.ToList())
            {
                ePhieuDeNghiNhapKho PDNNK = new ePhieuDeNghiNhapKho();
                PDNNK.SoPhieuDeNghiNhapKho = Phieu.MaPhieuDNNK;
                PDNNK.MaHoaDonNhaCungCap = Phieu.MaHoaDonNCC;
                PDNNK.MaKho = Phieu.MaKho;
                PDNNK.MaNhanVien = Phieu.MaNhanVien;
                PDNNK.NgayLap = Phieu.NgayLap;
                PDNNK.MoTa = Phieu.MoTa;
                PDNNK.TinhTrang = Phieu.tinhtrang;
                ls.Add(PDNNK);
            }
            return ls;
        }

        public List<ePhieuDeNghiNhapKho> GetPDNNKByMaNhanVien(string MaNhanVien)
        {
            List<ePhieuDeNghiNhapKho> ls = new List<ePhieuDeNghiNhapKho>();
            var c = from i in db.PhieuDNNKs
                    where i.MaNhanVien == MaNhanVien
                    select i;
            foreach (PhieuDNNK Phieu in c.ToList())
            {
                ePhieuDeNghiNhapKho PDNNK = new ePhieuDeNghiNhapKho();
                PDNNK.SoPhieuDeNghiNhapKho = Phieu.MaPhieuDNNK;
                PDNNK.MaHoaDonNhaCungCap = Phieu.MaHoaDonNCC;
                PDNNK.MaKho = Phieu.MaKho;
                PDNNK.MaNhanVien = Phieu.MaNhanVien;
                PDNNK.NgayLap = Phieu.NgayLap;
                PDNNK.MoTa = Phieu.MoTa;
                PDNNK.TinhTrang = Phieu.tinhtrang;
                ls.Add(PDNNK);
            }
            return ls;
        }

        public List<ePhieuDeNghiNhapKho> GetPDNNKByMaHDNhaCungCap(string MaNhaCC)
        {
            List<ePhieuDeNghiNhapKho> ls = new List<ePhieuDeNghiNhapKho>();
            var c = from i in db.PhieuDNNKs
                    where i.MaHoaDonNCC == i.MaHoaDonNCC
                    select i;
            foreach (PhieuDNNK Phieu in c.ToList())
            {
                ePhieuDeNghiNhapKho PDNNK = new ePhieuDeNghiNhapKho();
                PDNNK.SoPhieuDeNghiNhapKho = Phieu.MaPhieuDNNK;
                PDNNK.MaHoaDonNhaCungCap = Phieu.MaHoaDonNCC;
                PDNNK.MaKho = Phieu.MaKho;
                PDNNK.MaNhanVien = Phieu.MaNhanVien;
                PDNNK.NgayLap = Phieu.NgayLap;
                PDNNK.MoTa = Phieu.MoTa;
                PDNNK.TinhTrang = Phieu.tinhtrang;
                ls.Add(PDNNK);
            }
            return ls;
        }

        public List<ePhieuDeNghiNhapKho> GetPDNNKByMaKho(string MaKho)
        {
            List<ePhieuDeNghiNhapKho> ls = new List<ePhieuDeNghiNhapKho>();
            var c = from i in db.PhieuDNNKs
                    where i.MaKho == MaKho
                    select i;
            foreach (PhieuDNNK Phieu in c.ToList())
            {
                ePhieuDeNghiNhapKho PDNNK = new ePhieuDeNghiNhapKho();
                PDNNK.SoPhieuDeNghiNhapKho = Phieu.MaPhieuDNNK;
                PDNNK.MaHoaDonNhaCungCap = Phieu.MaHoaDonNCC;
                PDNNK.MaKho = Phieu.MaKho;
                PDNNK.MaNhanVien = Phieu.MaNhanVien;
                PDNNK.NgayLap = Phieu.NgayLap;
                PDNNK.MoTa = Phieu.MoTa;
                PDNNK.TinhTrang = Phieu.tinhtrang;
                ls.Add(PDNNK);
            }
            return ls;
        }

        private string SetTensp(string masp)
        {
            SanPham sp = db.SanPhams.Where(x => x.MaSP == masp).FirstOrDefault();
            return sp.TenSp;
        }
        public List<eChiTietPhieuDeNghiNhapKho> GetALLCTPDNNKByMa(string SoPhieu)
        {
            var c = from i in db.ChiTietPhieuDNNKs join j in db.SanPhams on i.MaSP equals j.MaSP
                    where i.MaPhieuDNNK == SoPhieu
                    select i;
            List<eChiTietPhieuDeNghiNhapKho> ls = new List<eChiTietPhieuDeNghiNhapKho>();
            foreach(ChiTietPhieuDNNK CT in c.ToList())
            {
                eChiTietPhieuDeNghiNhapKho ct = new eChiTietPhieuDeNghiNhapKho();
                ct.SoPDNNK = CT.MaPhieuDNNK;
                ct.MaSP = SetTensp(CT.MaSP);
                ct.SoLuong = Convert.ToInt32(CT.SoLuong);
                ct.GhiChu = ct.GhiChu;
                ls.Add(ct);
            }
            return ls;
        }
        // LaySoLuongPDNNK 
        // LaySoLuongCTPDNNK By SoPhieu
        // Tao PDNNK
        // Tao chi tiet PDNNK
        // Delete PDNNK
        // Delete chi tiet PDNNK
        // Cap Nhat So Luong San Pham Sau Khi Nhap Kho --- 
        // ....
        //.........>>
        public int CountSoLuongPDNNK(int n)
        {
            List<ePhieuDeNghiNhapKho> ls = GetALLPDNNK();
            n = ls.Count();
            return n;
        }

        public int CountSoLuongChiTietPDNNKBySoPhieu(string SoPhieu,int n)
        {
            List<eChiTietPhieuDeNghiNhapKho> ls = GetALLCTPDNNKByMa(SoPhieu);
            n = ls.Count();
            return n;
        }

        public void InsertPDNNK(ePhieuDeNghiNhapKho Phieu)
        {
            Phieu.NgayLap = DateTime.Now;
            PhieuDNNK PDNNK = new PhieuDNNK();
            PDNNK.MaPhieuDNNK = TaoMaPDNNK();
            PDNNK.MaHoaDonNCC = Phieu.MaHoaDonNhaCungCap;
            PDNNK.MaKho = Phieu.MaKho;
            PDNNK.MaNhanVien = Phieu.MaNhanVien;
            PDNNK.MoTa = Phieu.MoTa;
            PDNNK.NgayLap = Phieu.NgayLap;
            PDNNK.tinhtrang = 0;
            db.PhieuDNNKs.InsertOnSubmit(PDNNK);
            db.SubmitChanges();
        }

        public int InsertPDNNKChiTiet(eChiTietPhieuDeNghiNhapKho Chitiet)
        {
            var sp = from i in db.SanPhams
                     where i.MaSP == Chitiet.MaSP
                     select i;
            if(sp.Any())
            {
                var c = from i in db.ChiTietPhieuDNNKs
                        where i.MaSP == Chitiet.MaSP && i.MaPhieuDNNK == Chitiet.SoPDNNK
                        select i;
                if(c.Any())
                {
                    throw new Exception("There have already");
                }
                else
                {
                    ChiTietPhieuDNNK newct = new ChiTietPhieuDNNK();
                    newct.MaPhieuDNNK = Chitiet.SoPDNNK;
                    newct.MaSP = Chitiet.MaSP;
                    newct.GhiChu = Chitiet.GhiChu;
                    newct.SoLuong = Chitiet.SoLuong;
                    db.ChiTietPhieuDNNKs.InsertOnSubmit(newct);
                    db.SubmitChanges();
                    return 1;
                }
            }
            else
            {
                throw new Exception("Invaild SanPham ID");
            }
        }
        private string SetMaSp(string ten)
        {
            SanPham sp = db.SanPhams.Where(x => x.TenSp == ten).FirstOrDefault();
            return sp.MaSP;
        }
        public bool DeLetePDNNK(string SoPhieu)
        {
            var c = from i in db.PhieuNhapKhos
                    where i.sopnk == SoPhieu
                    select i;
            if (c.Any())
            {
                throw new Exception("This Can't Be Delete");
            }
            else
            {
                PhieuDNNK Phieu = db.PhieuDNNKs.Where(x => x.MaPhieuDNNK == SoPhieu).FirstOrDefault();
                if (Phieu != null)
                {
                    db.PhieuDNNKs.DeleteOnSubmit(Phieu);
                    db.SubmitChanges();
                    return true;
                }
                else
                {
                    throw new Exception("Invalid ID");
                }
            }
        }

        public void DeletePDNNKChiTiet(string SoPhieu,string MaSP)
        {
            MaSP = SetMaSp(MaSP);
            ChiTietPhieuDNNK ct = db.ChiTietPhieuDNNKs.Where(x => x.MaPhieuDNNK == SoPhieu && x.MaSP == MaSP).FirstOrDefault();
            if (ct != null)
            {
                db.ChiTietPhieuDNNKs.DeleteOnSubmit(ct);
                db.SubmitChanges();
            }
            else
            {
                throw new Exception("Invalid Details of Null Information");
            }
        }
        private string TaoMaPDNNK()
        {
            int max = 0;
            foreach (PhieuDNNK Phieu in db.PhieuDNNKs)
            {
                int t = int.Parse(Phieu.MaPhieuDNNK.Substring(5));
                if (t >= max)
                    max = t;
            }
            max++;
            return "PDNNK" + string.Format("{0:0000}", max);
        }
        public string LayMaNhanVien(string Manv)
        {
            NhanVien NV = db.NhanViens.Where(x => x.maNhanVien == Manv).FirstOrDefault();
            string s = NV.hoTenNhanVien;
            return s;
        }
    }
}
